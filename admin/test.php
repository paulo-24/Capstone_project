<?php
													while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
														echo "<pre>";
														print_r($row); // Display the contents of each row
														echo "</pre>";
														// Fetch teacher's full name
														$teacherStmt = $pdo->prepare("SELECT fullName FROM staff_accounts WHERE id = :id");
														$teacherStmt->bindParam(':id', $row['teacher'], PDO::PARAM_INT);
														$teacherStmt->execute();
														$teacher = $teacherStmt->fetch(PDO::FETCH_ASSOC);

														// Fetch meeting schedule details
														$scheduleStmt = $pdo->prepare("SELECT meeting_days, start_time, end_time FROM subjects_schedules WHERE subject_id = :subject_id");
														$scheduleStmt->bindParam(':subject_id', $row['subject_id'], PDO::PARAM_INT);
														$scheduleStmt->execute();
														$schedules = $scheduleStmt->fetchAll(PDO::FETCH_ASSOC);

														// Format schedule information
														$scheduleDetails = [];
														foreach ($schedules as $schedule) {
															$formattedTime = date("h:i A", strtotime($schedule['start_time'])) . " - " . date("h:i A", strtotime($schedule['end_time']));
															$scheduleDetails[] = "<strong>" . htmlspecialchars($schedule['meeting_days']) . "</strong>: " . $formattedTime;
														}
														$scheduleInfo = implode("<br>", $scheduleDetails); // Convert array to HTML line breaks for display
														?>

														<?php
														$query1 = "SELECT fullName FROM staff_advising WHERE class_advising = :class";
														$stmt1 = $pdo->prepare($query1);
														$stmt1->bindParam(':class', $row['name'], PDO::PARAM_STR);
														$stmt1->execute();
														$adviser = $stmt1->fetchColumn();
														?>
														<tr>
															<td><?php echo htmlspecialchars($row['name']); ?></td>
															<td><?php echo htmlspecialchars($adviser); ?></td>
															<td>
																<span class="alert alert-primary"
																	style="padding:2px"><?php echo htmlspecialchars($row['type']); ?></span>
																<br>

																<?php echo htmlspecialchars($row['code']); ?> <br>


																<?php echo htmlspecialchars($row['subject']); ?>
															</td>

															<td><?php echo htmlspecialchars($row['teacher']); ?></td>
															<!-- Use full name from fetched data -->
															<td><?php echo htmlspecialchars($row['semester']); ?></td>

															<td><a href="#" style="color:black !important" data-bs-toggle="modal"
																	data-bs-target="#studentModal<?php echo $row['id'] ?>">
																	<?php echo htmlspecialchars($row['studentTotal']); ?>
																</a></td>
															<td>
																<?php
																echo $row['is_archived'] == 0 ? 'Not Archived' : 'Archived';
																?>
															</td>

															<td>
																<?php if ($row['is_archived'] == 1): ?>
																	<!-- If the class is archived, only show the 'View' button -->
																	<button type='button' class='btn btn-primary' data-bs-toggle='modal'
																		data-bs-target='#viewModal<?php echo $row['id']; ?>'>
																		<i class='bi bi-eye'></i> View
																	</button>
																<?php else: ?>
																	<?php if ($row['status'] == 'pending'): ?>
																		<span><b>This class is still pending for
																				approval:</b></span><br><br>
																		<span>Request made
																			by:<b><?php echo $row['requestor']; ?></b></span><br><br>
																		<a
																			href="processes/admin/classes/accept.php?id=<?php echo $row['id'] ?>&subject=<?php echo $row['subject'] ?>&requestor=<?php echo $row['requestor'] ?>&class=<?php echo $row['name'] ?>">
																			<button class='btn btn-success'>
																				<small><i class='bi bi-check2-square'></i> Approve</small>
																			</button>
																		</a>
																		<a data-bs-toggle="modal"
																			data-bs-target="#disapproveModal<?php echo $row['id']; ?>">
																			<button class='btn btn-danger'>
																				<small><i class='bi bi-x-circle-fill'></i>
																					Disapprove</small>
																			</button>
																		</a>
																	<?php elseif ($row['status'] == 'disapproved'): ?>
																		<span>This class has been rejected. <br><br> <b>Reason:</b> <br>
																			<?php echo $row['reason']; ?></span><br><br>
																		<button type="button" class="btn btn-danger"
																			onclick="confirmDelete(<?php echo $row['id']; ?>)">
																			<i class="bi bi-trash"></i> Delete
																		</button>
																	<?php else: ?>
																		<button type='button' class='btn btn-primary' data-bs-toggle='modal'
																			data-bs-target='#viewModal<?php echo $row['id']; ?>'>
																			<i class='bi bi-eye'></i> View
																		</button>
																		<button type='button' class='btn btn-warning' data-bs-toggle='modal'
																			data-bs-target='#editModal<?php echo $row['id']; ?>'>
																			<i class='bi bi-pencil'></i> Edit
																		</button>
																		<button type="button" class="btn btn-danger"
																			onclick="confirmDelete(<?php echo $row['id']; ?>)">
																			<i class="bi bi-trash"></i> Delete
																		</button>
																	<?php endif; ?>
																<?php endif; ?>
															</td>

														</tr>

													




													<?php } ?>