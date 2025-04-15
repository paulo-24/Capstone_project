<?php
require 'processes/server/conn.php';
date_default_timezone_set('Asia/Manila');
$user_id = $_SESSION['user_id'];
$query = "SELECT * FROM admin_notifications ORDER BY id DESC ";
$stmt = $pdo->prepare($query);
$stmt->execute();
$notifications = $stmt->fetchAll(PDO::FETCH_ASSOC);
$notifCount = count($notifications);


$query = "SELECT * FROM admin_notifications WHERE status = 'unread' ORDER BY id DESC LIMIT 5";
$stmt = $pdo->prepare($query);
$stmt->execute();
$notificationsUnread = $stmt->fetchAll(PDO::FETCH_ASSOC);
$notificationCount = count($notificationsUnread);

$query = "SELECT * FROM messages WHERE status = 'unread' AND receiver_id = :user_id ORDER BY id DESC";
$stmt = $pdo->prepare($query);
$stmt->bindParam(':user_id', $user_id); // Fix here
$stmt->execute();
$messagesUnread = $stmt->fetchAll(PDO::FETCH_ASSOC);
$messagesCount = count($messagesUnread);

?>


<ul class="navbar-nav navbar-align">
    <li class="nav-item dropdown">
        <a class="nav-icon dropdown-toggle" href="#" id="alertsDropdown" data-bs-toggle="dropdown">
            <div class="position-relative">
                <i class="align-middle" data-feather="bell"></i>

                <?php if ($notificationCount > 0) { ?>
                    <span class="indicator"><?php echo $notificationCount; ?></span>
                <?php } ?>
            </div>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-end py-0" aria-labelledby="alertsDropdown">
            <div class="dropdown-menu-header">
                <?php if ($notificationCount > 0) { ?>
                    <?php echo $notificationCount; ?> New Notifications
                    <div class="dropdown-item text-center">
                        <a href="processes/admin/notifications/read_all.php">
                            <button id="readAll" class="btn btn-link">Read All</button></a>
                        <a href="processes/admin/notifications/delete_all.php">
                            <button id="deleteAll" class="btn btn-link text-danger">Delete All</button>
                        </a>
                    </div>
                <?php } else { ?>
                    <?php echo "No new notifications" ?>
                <?php } ?>
            </div>
            <div class="list-group">
                <?php foreach ($notificationsUnread as $notification): ?>
                    <div class="list-group-item">
                        <div class="row g-0 align-items-center">
                            <div class="col-2">
                                <h1 class="bi bi-info-circle-fill"></h1>
                            </div>

                            <div class="col-8">
                                <a href="https://ccs-sms.com/<?php echo $notification['link'] ?>">
                                    <div class="text-dark"><?php echo htmlspecialchars($notification['title']); ?></div>
                                    <div class="text-muted small mt-1">
                                        <?php echo htmlspecialchars($notification['description']); ?>
                                    </div>
                                    <div class="text-muted small mt-1">
                                        <?php echo htmlspecialchars($notification['date']); ?>
                                    </div>
                                </a>
                            </div>

                            <div class="col-2 text-end">
                                <form action="processes/admin/notifications/read.php" method="POST" class="d-inline">
                                    <input type="hidden" name="id" value="<?php echo $notification['id']; ?>">
                                    <button type="submit" class="btn btn-link p-0">Read</button>
                                </form>
                                <form action="processes/admin/notifications/delete.php" method="POST" class="d-inline">
                                    <input type="hidden" name="id" value="<?php echo $notification['id']; ?>">
                                    <button type="submit" class="btn btn-link text-danger p-0">Delete</button>
                                </form>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>
            <?php if ($notifCount > 0) { ?>
                <div class="dropdown-menu-footer">
                    <a href="#" class="text-muted" data-bs-toggle="modal" data-bs-target="#notificationsModal">Show all
                        notifications</a>
                </div>
            <?php } ?>
        </div>
    </li>

    <li class="nav-item dropdown">

        <a class="nav-icon dropdown-toggle" href="#" data-bs-toggle="modal" data-bs-target="#messagesModal">
            <div class="position-relative">
                <i class="align-middle" data-feather="message-square"></i>
                <?php
                if ($messagesCount > 0) { ?>
                    <span class="indicator"><?php echo $messagesCount; ?></span>
                <?php } ?>
            </div>
        </a>
    </li>



    <div class="modal fade" id="messagesModal" tabindex="-1" aria-labelledby="messagesModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable modal-dialog-centered">
        <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header">
                <h5 class="modal-title" id="modalTitle">Messages</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>

            <!-- Modal Body -->
            <div class="modal-body" id="modalBody">
                <!-- Search Bar -->
                <div id="searchSection">
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" id="userSearch" placeholder="Search users..."
                            aria-label="Search users">
                        <button class="btn btn-outline-secondary" type="button" id="searchButton">Search</button>
                    </div>

                    <!-- Recent Conversations -->
                    <div id="recentConversations">
                        <h6>Recent Conversations</h6>
                        <div class="list-group" id="recentConvoList">
                            <!-- Dynamic content will be here -->
                        </div>
                    </div>

                    <!-- Search Results -->
                    <div id="searchResults" style="display: none;">
                        <h6>Search Results</h6>
                        <div class="list-group" id="searchResultList">
                            <p class="text-muted text-center">Type to search for users.</p>
                        </div>
                    </div>
                </div>

                <!-- Conversation Section (Hidden Initially) -->
                <div id="conversationSection" style="display: none;">
                    <div id="conversationContent" class="flex-grow-1 overflow-auto p-3"
                        style="background-color: #f8f9fa; border-radius: 0.25rem;">
                        <p class="text-muted text-center">No messages yet.</p>
                    </div>
                    <div class="input-group mt-3 sticky-bottom" style="border-radius: 20px;">
                        <input type="text" id="messageInput" class="form-control" placeholder="Type a message"
                            aria-label="Type a message" style="position: sticky">
                        <button class="btn btn-primary" type="button" onclick="sendMessage()">Send</button>
                    </div>
                </div>
            </div>

            <!-- Modal Footer -->
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" id="backButton" style="display: none;"
                    onclick="goBackToMessages()">Back</button>
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<style>
    .message-bubble {
        word-wrap: break-word;
        max-width: 80%;
    }

    #conversationContent {
        height: 400px;
        overflow-y: auto;
    }

    .sending-bubble {
        background-color: #e9ecef;
        color: #6c757d;
        font-style: italic;
    }
</style>


<script>
// Initial variables
const name = '<?php echo isset($_SESSION['full_name']) ? $_SESSION['full_name'] : 'null'; ?>';
const userId = <?php echo isset($_SESSION['user_id']) ? $_SESSION['user_id'] : 'null'; ?>;
const userType = '<?php echo isset($_SESSION['user_type']) ? $_SESSION['user_type'] : ''; ?>';
let receiverNameGlobal = "Unknown Receiver";
let lastMessageId = 0;
let pollInterval;

// Enhanced user search functionality
function searchUsers(query) {
    if (query.length < 2) {
        document.getElementById("searchResults").style.display = "none";
        return;
    }

    fetch(`search_users.php?query=${encodeURIComponent(query)}`)
        .then(response => response.json())
        .then(users => {
            let resultList = document.getElementById("searchResultList");
            resultList.innerHTML = "";

            if (!users || users.length === 0) {
                resultList.innerHTML = "<p class='text-muted text-center'>No users found.</p>";
            } else {
                users.forEach(user => {
                    let item = document.createElement("button");
                    item.className = "list-group-item list-group-item-action";
                    item.innerText = user.fullName || "Unknown User";
                    item.onclick = () => openChat(user.id, user.user_type, user.fullName || "Unknown User");
                    resultList.appendChild(item);
                });
            }
            document.getElementById("searchResults").style.display = "block";
        })
        .catch(error => {
            console.error("Search error:", error);
            let resultList = document.getElementById("searchResultList");
            resultList.innerHTML = "<p class='text-muted text-center'>Error searching users.</p>";
            document.getElementById("searchResults").style.display = "block";
        });
}

// Attach event listeners for search
document.getElementById("userSearch").addEventListener("input", function() {
    searchUsers(this.value.trim());
});

document.getElementById("searchButton").addEventListener("click", function() {
    searchUsers(document.getElementById("userSearch").value.trim());
});

function openChat(receiverId, receiverType, receiverName) {
    document.getElementById("modalTitle").innerText = "Chatting with " + receiverName;
    document.getElementById("conversationSection").style.display = "block";
    document.getElementById("searchSection").style.display = "none";
    document.getElementById("backButton").style.display = "block";

    window.currentChat = {
        receiverId,
        receiverType,
        receiverName
    };
    receiverNameGlobal = receiverName;

    lastMessageId = 0;
    loadChat();
    startPolling();
}

function goBackToMessages() {
    document.getElementById("modalTitle").innerText = "Messages";
    document.getElementById("conversationSection").style.display = "none";
    document.getElementById("searchSection").style.display = "block";
    document.getElementById("backButton").style.display = "none";
    document.getElementById("conversationContent").innerHTML = "<p class='text-muted text-center'>No messages yet.</p>";
    window.currentChat = null;
    stopPolling();
    loadRecentChats();
}

function sendMessage() {
    let messageInput = document.getElementById("messageInput");
    let message = messageInput.value.trim();

    if (!message || !window.currentChat) return;

    let tempId = 'temp-' + Date.now();
    appendMessage("You", message, true, new Date().toISOString(), tempId, 'sending');

    let formData = new FormData();
    formData.append("receiver_id", window.currentChat.receiverId);
    formData.append("receiver_type", window.currentChat.receiverType);
    formData.append("message", message);

    fetch("send_message.php", {
        method: "POST",
        body: formData
    })
    .then(response => response.json())
    .then(result => {
        if (result.success) {
            messageInput.value = "";
            let tempElement = document.querySelector(`[data-message-id="${tempId}"]`);
            if (tempElement) tempElement.remove();
            loadChat(); // Refresh chat after sending
            loadRecentChats();
        } else {
            let tempElement = document.querySelector(`[data-message-id="${tempId}"]`);
            if (tempElement) {
                tempElement.querySelector('.message-bubble').innerText = "Failed to send";
                tempElement.querySelector('.message-bubble').classList.replace('sending-bubble', 'bg-danger');
            }
            console.error("Message sending failed:", result.error);
        }
    })
    .catch(error => {
        let tempElement = document.querySelector(`[data-message-id="${tempId}"]`);
        if (tempElement) {
            tempElement.querySelector('.message-bubble').innerText = "Network error";
            tempElement.querySelector('.message-bubble').classList.replace('sending-bubble', 'bg-danger');
        }
        console.error("Error:", error);
    });
}

function loadChat() {
    let chat = window.currentChat;
    if (!chat) return;

    fetch(`load_chat.php?receiver_id=${chat.receiverId}&receiver_type=${chat.receiverType}&t=${Date.now()}`)
        .then(response => {
            if (!response.ok) throw new Error("Network response was not ok");
            return response.json();
        })
        .then(data => {
            let chatBox = document.getElementById("conversationContent");
            chatBox.innerHTML = "";

            if (data.error) {
                chatBox.innerHTML = `<p class='text-muted text-center'>Error: ${data.error}</p>`;
                return;
            }

            if (!Array.isArray(data) || data.length === 0) {
                chatBox.innerHTML = "<p class='text-muted text-center'>No messages yet.</p>";
                return;
            }

            data.forEach(msg => {
                let isMe = msg.sender_id == userId;
                appendMessage(
                    isMe ? "You" : msg.sender_name,
                    msg.message,
                    isMe,
                    msg.timestamp,
                    msg.id,
                    msg.status
                );
                if (msg.id > lastMessageId) lastMessageId = msg.id;
            });
        })
        .catch(error => {
            console.error("Error loading chat:", error);
            document.getElementById("conversationContent").innerHTML = 
                "<p class='text-muted text-center'>Error loading messages.</p>";
        });
}

function pollMessages() {
    let chat = window.currentChat;
    if (!chat) return;

    fetch(`load_chat.php?receiver_id=${chat.receiverId}&receiver_type=${chat.receiverType}&t=${Date.now()}`)
        .then(response => response.json())
        .then(data => {
            if (!data.error && Array.isArray(data)) {
                let currentMessages = Array.from(document.querySelectorAll('[data-message-id]'))
                    .map(el => el.dataset.messageId)
                    .filter(id => !id.startsWith('temp-')); // Exclude temp IDs

                // Check for new messages
                let newMessages = data.filter(msg => !currentMessages.includes(msg.id.toString()));
                // Check for deleted messages
                let deletedMessages = currentMessages.filter(id => !data.some(msg => msg.id.toString() === id));

                // Append new messages
                if (newMessages.length > 0) {
                    newMessages.forEach(msg => {
                        let isMe = msg.sender_id == userId;
                        appendMessage(
                            isMe ? "You" : msg.sender_name,
                            msg.message,
                            isMe,
                            msg.timestamp,
                            msg.id,
                            msg.status
                        );
                        if (msg.id > lastMessageId) lastMessageId = msg.id;
                    });
                    loadRecentChats();
                }

                // Remove deleted messages
                if (deletedMessages.length > 0) {
                    deletedMessages.forEach(id => {
                        let element = document.querySelector(`[data-message-id="${id}"]`);
                        if (element) {
                            element.remove();
                            console.log(`Deleted message ${id} removed from DOM`);
                        }
                    });
                    loadRecentChats();
                }
            }
        })
        .catch(error => console.error("Polling error:", error));
}

function startPolling() {
    stopPolling();
    pollInterval = setInterval(pollMessages, 2000); // Poll every 2 seconds
}

function stopPolling() {
    if (pollInterval) {
        clearInterval(pollInterval);
        pollInterval = null;
    }
}

function appendMessage(sender, message, isMe, timestamp, id, status) {
    let chatBox = document.getElementById("conversationContent");

    // Skip if message already exists (prevents duplicates)
    if (document.querySelector(`[data-message-id="${id}"]`)) return;

    let messageContainer = document.createElement("div");
    messageContainer.className = `d-flex flex-column ${isMe ? "align-items-end" : "align-items-start"} mb-2`;
    messageContainer.dataset.messageId = id;

  // Assume timestamp is already in PHT (UTC+8) from the server
    let date = new Date(timestamp); // Treat as UTC to avoid local offset
    let timeString = date.toLocaleTimeString('en-PH', {
        hour: '2-digit',
        minute: '2-digit',
        hour12: true,
        timeZone: 'Asia/Manila' // Display in PHT
    });
    
    let senderName = document.createElement("small");
    senderName.className = "text-muted font-weight-bold";
    senderName.innerText = sender;
    messageContainer.appendChild(senderName);

    let bubbleContainer = document.createElement("div");
    bubbleContainer.className = "d-flex align-items-center";

    if (isMe && status !== 'sending') {
        let trashIcon = document.createElement("i");
        trashIcon.className = "bi bi-trash me-2";
        trashIcon.style.cursor = "pointer";
        trashIcon.style.color = "red";
        trashIcon.onclick = () => deleteMessage(id);
        bubbleContainer.appendChild(trashIcon);
    }

    let messageBubble = document.createElement("div");
    messageBubble.className = `p-2 rounded text-white ${
        status === 'sending' ? 'sending-bubble' : (isMe ? 'bg-primary' : 'bg-secondary')
    }`;
    messageBubble.style.maxWidth = "100%";
    messageBubble.style.overflowWrap = "break-word";
    messageBubble.innerText = message;
    bubbleContainer.appendChild(messageBubble);

    if (isMe && status && status !== 'sending') {
        let statusIcon = document.createElement("small");
        statusIcon.className = "text-muted ms-2";
        statusIcon.innerText = status === 'read' ? '✓✓' : '✓';
        bubbleContainer.appendChild(statusIcon);
    }

    messageContainer.appendChild(bubbleContainer);

    let timeText = document.createElement("small");
    timeText.className = "text-muted mt-1";
    timeText.innerText = timeString;
    messageContainer.appendChild(timeText);

    chatBox.appendChild(messageContainer);
    chatBox.scrollTop = chatBox.scrollHeight;
}

function deleteMessage(id) {
    if (confirm("Are you sure you want to delete this message?")) {
        fetch("delete_message.php", {
            method: "POST",
            headers: {
                "Content-Type": "application/x-www-form-urlencoded"
            },
            body: `id=${id}`
        })
        .then(response => {
            if (!response.ok) throw new Error(`HTTP error! status: ${response.status}`);
            return response.json();
        })
        .then(result => {
            console.log("Delete response:", result); // Debug log
            if (result.success) {
                let element = document.querySelector(`[data-message-id="${id}"]`);
                if (element) {
                    element.remove();
                    console.log(`Message ${id} removed from DOM`);
                }
                loadChat(); // Refresh chat immediately
                loadRecentChats(); // Update recent chats
            } else {
                console.error("Delete failed:", result.error);
                alert("Failed to delete message: " + (result.error || "Unknown error"));
            }
        })
        .catch(error => {
            console.error("Delete error:", error);
            alert("Network error while deleting message: " + error.message);
        });
    }
}

function loadRecentChats() {
    fetch("fetch_recent_chats.php?t=" + Date.now())
        .then(response => response.json())
        .then(chats => {
            let recentList = document.getElementById("recentConvoList");
            recentList.innerHTML = "";

            if (!chats || chats.length === 0) {
                recentList.innerHTML = "<p class='text-muted text-center'>No recent conversations.</p>";
                return;
            }

            chats.forEach(chat => {
                let item = document.createElement("button");
                item.className = "list-group-item list-group-item-action";

                let chatContent = document.createElement("div");
                chatContent.className = "d-flex flex-column";

                let nameContainer = document.createElement("div");
                nameContainer.className = "d-flex justify-content-between align-items-center";

                let nameText = document.createElement("strong");
                nameText.innerText = chat.full_name || "Unknown User";
                nameContainer.appendChild(nameText);

                if (chat.is_new) {
                    let badge = document.createElement("span");
                    badge.className = "badge bg-danger ms-2";
                    badge.innerText = "New";
                    nameContainer.appendChild(badge);
                }

                let messageText = document.createElement("span");
                messageText.className = "text-muted";
                messageText.innerText = chat.last_message || "No messages yet";

                let timeText = document.createElement("small");
                timeText.className = "text-end text-muted";
                timeText.innerText = chat.time || "";

                chatContent.appendChild(nameContainer);
                chatContent.appendChild(messageText);
                chatContent.appendChild(timeText);

                item.appendChild(chatContent);
                item.onclick = () => openChat(chat.chat_partner, chat.chat_partner_type, chat.full_name || "Unknown User");
                recentList.appendChild(item);
            });
        })
        .catch(error => {
            console.error("Error loading recent chats:", error);
            document.getElementById("recentConvoList").innerHTML = 
                "<p class='text-muted text-center'>Error loading conversations.</p>";
        });
}

document.getElementById("messagesModal").addEventListener("hidden.bs.modal", stopPolling);
document.getElementById("messagesModal").addEventListener("shown.bs.modal", loadRecentChats);
</script>


    <li class="nav-item dropdown">
        <a class="nav-icon dropdown-toggle d-inline-block d-sm-none" href="#" data-bs-toggle="dropdown">
            <i class="align-middle" data-feather="settings"></i>
        </a>

        <a class="nav-link dropdown-toggle d-none d-sm-inline-block" href="#" data-bs-toggle="dropdown">
            <span class="text-light">Admin</span>
        </a>
        <div class="dropdown-menu dropdown-menu-end">


            <a class="dropdown-item" href="processes/admin/account/logout.php">
                Log out
            </a>
        </div>



    </li>
</ul>

<div class="modal fade" id="notificationsModal" tabindex="-1" aria-labelledby="notificationsModalLabel"
    aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-scrollable modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="notificationsModalLabel">All Notifications</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="list-group">
                    <?php foreach ($notifications as $notification): ?>
                        <div class="list-group-item list-group-item-action">
                            <a href="<?php echo $notification['link'] ?>" style="text-decoration: none">
                                <div class="row d-flex justify-content-center align-items-center">
                                    <div class="col text-center ">
                                        <h1 class="bi bi-info-circle-fill"></h1>
                                    </div>
                                    <div class="col-8">
                                        <div class="text-dark"><?php echo htmlspecialchars($notification['title']); ?></div>
                                        <div class="text-muted small mt-1">
                                            <?php echo htmlspecialchars($notification['description']); ?>
                                        </div>
                                        <div class="text-muted small mt-1">
                                            <?php echo htmlspecialchars($notification['date']); ?>
                                        </div>
                                    </div>
                                    <div class="col-2 text-end">
                                        <?php if ($notification['status'] == 'unread') { ?>
                                            <form action="processes/admin/notifications/read.php" method="POST"
                                                class="d-inline">
                                                <input type="hidden" name="id" value="<?php echo $notification['id']; ?>">
                                                <button type="submit" class="btn btn-link p-0">Read</button>
                                            </form>
                                        <?php } ?>
                                        <form action="processes/admin/notifications/delete.php" method="POST"
                                            class="d-inline">
                                            <input type="hidden" name="id" value="<?php echo $notification['id']; ?>">
                                            <button type="submit" class="btn btn-link p-0">Delete</button>
                                        </form>
                                    </div>
                                </div>
                            </a>
                        </div>
                    <?php endforeach; ?>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                    data-bs-target="#deleteAllModal">Delete All</button>

                <button type="button" class="btn btn-info" data-bs-toggle="modal" data-bs-target="#readAllModal">Read
                    All</button>

            </div>
        </div>
    </div>
</div>

<!-- Delete All Confirmation Modal -->
<div class="modal fade" id="deleteAllModal" tabindex="-1" aria-labelledby="deleteAllModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="deleteAllModalLabel">Delete All Notifications</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                Are you sure you want to delete all notifications?
            </div>
            <div class="modal-footer">
                <form action="processes/admin/notifications/delete_all.php" method="POST">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-danger">Delete All</button>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Read All Confirmation Modal -->
<div class="modal fade" id="readAllModal" tabindex="-1" aria-labelledby="readAllModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="readAllModalLabel">Read All Notifications</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                Are you sure you want to mark all notifications as read?
            </div>
            <div class="modal-footer">
                <form action="processes/admin/notifications/read_all.php" method="POST">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-info">Read All</button>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Profile Modal -->
<div class="modal fade" id="profileModal" tabindex="-1" aria-labelledby="profileModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="profileModalLabel">Profile</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <!-- Profile content here -->
                <p>Your profile information...</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>




<script>
    function gotoLink() {
        window.location.href = "processes/server/reset_notifications.php";
    }

    $(document).ready(function() {
        // Set all notifications to false when button is clicked
        $('#setAllFalse').on('click', function() {
            $.ajax({
                url: 'process_notifications.php', // Change this to your PHP file
                type: 'POST',
                data: {
                    action: 'set_all_false'
                },
                success: function(response) {
                    alert('All notifications set to false!');
                }
            });
        });

        // Handle setting notifications individually
        $('#setIndividually').on('click', function() {
            $.ajax({
                url: 'process_notifications.php', // Change this to your PHP file
                type: 'POST',
                data: {
                    action: 'set_individual'
                },
                success: function(response) {
                    alert('Manage notifications individually.');
                }
            });
        });
    });
</script>