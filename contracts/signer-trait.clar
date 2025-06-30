
;; title: SignerGateway - Signer Trait Definition
;; version: 1.0.0
;; description: Interface definition for sBTC signer contracts

;; Signer information structure
(define-trait signer-trait
  (
    ;; Registration functions
    (register-signer (string-ascii 100) (string-ascii 100) (string-ascii 50) (string-ascii 100) (string-ascii 200) (response bool uint))
    (update-signer-info (string-ascii 100) (string-ascii 100) (string-ascii 50) (string-ascii 100) (string-ascii 200) (response bool uint))
    (deactivate-signer () (response bool uint))
    
    ;; Admin functions
    (update-verification-status principal (string-ascii 20) (response bool uint))
    
    ;; Read-only functions
    (get-signer (principal) (optional {name: (string-ascii 100), contact-email: (string-ascii 100), location: (string-ascii 50), website: (string-ascii 100), capabilities: (string-ascii 200), verification-status: (string-ascii 20), registration-block: uint, is-active: bool}))
    (get-total-signers () uint)
    (get-all-signer-addresses () (list 1000 principal))
    (is-registered-signer (principal) bool)
    (get-active-signers-count () uint)
    (get-verified-signers-count () uint)
  )
)
