


(ert-deftest answer-a ()
  (should (string= "5" (with-current-buffer (find-file-noselect "quiz.org")
			 (nth 1 (car (org-collect-keywords '("ANSWER-A"))))))))
