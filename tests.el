


(ert-deftest answer-a ()
  (should (string= "5" (with-current-buffer (find-file-noselect "quiz.org")
			 (nth 1 (car (org-collect-keywords '("ANSWER-A"))))))))


(ert-deftest answer-b ()
  (should (string= "42"
		   (with-current-buffer (find-file-noselect "quiz.org")
		     (org-babel-goto-named-result "answer-b")
		     (let ((result (org-element-context)))
		       (string-trim
			(buffer-substring-no-properties
			 (org-element-property :contents-begin result)
			 (org-element-property :contents-end result))))))))
