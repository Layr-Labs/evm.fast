import InitECandidate.Solver.MemSafe.Wg.Core

/-!
# Wg: table summaries as `CallR` (`u256_mul`, `create_ether`, `ext_code_of`)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Wg
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

theorem tab_u256_mul :
    CSumm σ guestCtx guestC (HR σ) (nm "u256_mul") ⟨[.any, .any], [], [], false⟩ [] := ctab% ShardsR.tab_soundR

def ceCaps : List Cap :=
  [⟨nm "*", 10, [], true⟩, ⟨nm "*", 14, [], true⟩, ⟨nm "*", 11, [], true⟩, ⟨nm "*", 12, [], true⟩, ⟨nm "*", 42, [], true⟩, ⟨nm "*", 43, [], true⟩, ⟨nm "*", 44, [], true⟩, ⟨nm "*", 45, [], true⟩, ⟨nm "*", 55, [], true⟩, ⟨nm "*", 65, [], true⟩, ⟨nm "*", 66, [], true⟩, ⟨nm "*", 67, [], true⟩, ⟨nm "*", 68, [], true⟩, ⟨nm "*", 69, [], true⟩, ⟨nm "*", 70, [], true⟩, ⟨nm "*", 71, [], true⟩, ⟨nm "journal", 9, [], true⟩, ⟨nm "sk_buf", 24, [], false⟩]

theorem tab_create_ether :
    CSumm σ guestCtx guestC (HR σ) (nm "create_ether") ⟨[(.buf 20), .any], [], [nm "journal_n"], true⟩ ceCaps :=
  ctab% ShardsR.tab_soundR

def ecCaps : List Cap :=
  [⟨nm "*", 10, [], true⟩, ⟨nm "*", 14, [], true⟩, ⟨nm "*", 11, [], true⟩, ⟨nm "*", 12, [], true⟩, ⟨nm "*", 42, [], true⟩, ⟨nm "*", 43, [], true⟩, ⟨nm "*", 44, [], true⟩, ⟨nm "*", 45, [], true⟩, ⟨nm "*", 55, [], true⟩, ⟨nm "*", 65, [], true⟩, ⟨nm "*", 66, [], true⟩, ⟨nm "*", 67, [], true⟩, ⟨nm "*", 68, [], true⟩, ⟨nm "*", 69, [], true⟩, ⟨nm "*", 70, [], true⟩, ⟨nm "*", 71, [], true⟩, ⟨nm "sk_buf", 24, [], false⟩]

theorem tab_ext_code_of :
    CSumm σ guestCtx guestC (HR σ) (nm "ext_code_of") ⟨[(.buf 20)], [], [], true⟩ ecCaps :=
  ctab% ShardsR.tab_soundR

theorem csok_ce : CsOK ceCaps := by
  refine ⟨?_, ?_, ?_⟩ <;> decide

theorem csok_ec : CsOK ecCaps := by
  refine ⟨?_, ?_, ?_⟩ <;> decide

theorem cr_create_ether : CallR (σ := σ) (nm "create_ether")
    (fun vs _ Γ p => ArgsOK guestC Γ p [(.buf 20), .any] vs) (fun _ _ _ _ => False)
    (fun vs _ Γ p v _ Γ' p' => RetOK Γ' p p' vs [] v ∧ (true = false → NewFresh Γ Γ' p p)) :=
  callR_of_csumm tab_create_ether (by decide) (by decide) csok_ce

theorem cr_ext_code_of : CallR (σ := σ) (nm "ext_code_of")
    (fun vs _ Γ p => ArgsOK guestC Γ p [(.buf 20)] vs) (fun _ _ _ _ => False)
    (fun vs _ Γ p v _ Γ' p' => RetOK Γ' p p' vs [] v ∧ (true = false → NewFresh Γ Γ' p p)) :=
  callR_of_csumm tab_ext_code_of (by decide) (by decide) csok_ec

theorem cr_u256_mul : CallR (σ := σ) (nm "u256_mul")
    (fun vs _ Γ p => ArgsOK guestC Γ p [.any, .any] vs) (fun _ _ _ _ => False)
    (fun vs _ Γ p v _ Γ' p' => RetOK Γ' p p' vs [] v ∧ (false = false → NewFresh Γ Γ' p p)) :=
  cr_plain tab_u256_mul rfl

end InitECandidate.Solver.MemSafe.Wg
