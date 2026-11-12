import InitECandidate.Solver.MemSafe.Pre.Dispatch
import InitECandidate.Solver.MemSafe.Fq.Calls

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

/-!
# `bn254_pairing_check` and `pre_alt_bn128_pairing_check` from `fq12_inv`

The fold rejects both only because they call `fq12_inv`. With one extra table entry
`fq12_inv : ⟨[buf 384, any], [], [], false⟩` the fold's own checker `accepts` both.
-/

namespace InitECandidate.Solver.MemSafe.Fq
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (MlS ProgHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- Signature of `bn254_pairing_check`. -/
def bpcSig : Sig := ⟨[.any, .any], [], [], false⟩

def bpcTab : CTab := (nm "fq12_inv", invSig, []) :: ShardsJL.tab26

def bpcCand : MCand :=
  MCand.ofPair (nm "bn254_pairing_check") (declPair Guest.Software.guestFn_bn254_pairing_check) bpcSig []

theorem bpcCand_accepts : accepts Types.guestC bpcTab bpcCand = true := by
  conv => lhs; arg 3; cbv
  conv => lhs; arg 2; cbv
  decide +kernel

theorem bpcCand_valid : bpcCand.Valid :=
  MCand.valid_of (declPair_valid (List.getElem_mem (n := 691) (by decide)) ⟨_, rfl⟩) rfl _ _

def pcTab : CTab := (nm "bn254_pairing_check", bpcSig, []) :: bpcTab

def pcCand : MCand :=
  MCand.ofPair (nm "pre_alt_bn128_pairing_check")
    (declPair Guest.Software.guestFn_pre_alt_bn128_pairing_check) Pre.preSig Pre.evCaps

theorem pcCand_accepts : accepts Types.guestC pcTab pcCand = true := by
  conv => lhs; arg 3; cbv
  conv => lhs; arg 2; cbv
  decide +kernel

theorem pcCand_valid : pcCand.Valid :=
  MCand.valid_of (declPair_valid (List.getElem_mem (n := 694) (by decide)) ⟨_, rfl⟩) rfl _ _

variable {σ : Type} {X : Ctx 64}

/-- **`pre_alt_bn128_pairing_check`**, generic: from the merged fold table and `fq12_inv`. -/
theorem csumm_pairing_check {H : Hooks σ} (hF : FoldOK σ X Types.guestC H)
    (hT : CTabSound σ X Types.guestC H ShardsJL.tab26)
    (hI : CSumm σ X Types.guestC H (nm "fq12_inv") invSig []) :
    CSumm σ X Types.guestC H (nm "pre_alt_bn128_pairing_check") Pre.preSig Pre.evCaps :=
  have hB : CSumm σ X Types.guestC H (nm "bn254_pairing_check") bpcSig [] :=
    accepts_sound hF (ctabSound_cons hT hI) bpcCand_valid bpcCand_accepts
  accepts_sound hF (ctabSound_cons (ctabSound_cons hT hI) hB) pcCand_valid pcCand_accepts

end InitECandidate.Solver.MemSafe.Fq

#print axioms InitECandidate.Solver.MemSafe.Fq.csumm_pairing_check
