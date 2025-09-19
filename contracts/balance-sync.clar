;; balance-sync.clar
;; Pedersen Accelerate - Collaborative Financial Management

;; This contract manages shared financial tracking and settlements between participants
;; on the Stacks blockchain, enabling transparent and trustless expense management.

;; =============== Error Constants ===============

(define-constant ERR-UNAUTHORIZED (err u2001))
(define-constant ERR-GROUP-EXISTS (err u2002))
(define-constant ERR-GROUP-NOT-FOUND (err u2003))
(define-constant ERR-PARTICIPANT-NOT-FOUND (err u2004))
(define-constant ERR-PARTICIPANT-ALREADY-EXISTS (err u2005))
(define-constant ERR-INVALID-AMOUNT (err u2006))
(define-constant ERR-INSUFFICIENT-BALANCE (err u2007))
(define-constant ERR-INVALID-ALLOCATION (err u2008))

;; Remaining code remains the same as the original contract...
(define-map groups
  { group-id: uint }
  { 
    name: (string-ascii 100),
    creator: principal,
    created-at: uint,
    active: bool
  }
)

(define-private (get-next-group-id)
  (let ((current-id (var-get next-group-id)))
    (var-set next-group-id (+ current-id u1))
    current-id
  )
)

;; Rest of the code continues... 