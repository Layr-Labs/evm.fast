import InitECandidate.Solver.MemSafe.Eb.Loop14
import InitECandidate.Solver.MemSafe.Trie.BmiFinal
import InitECandidate.Solver.MemSafe.Trie.CsrFinal
import InitECandidate.Solver.MemSafe.Exb.Crh
import InitECandidate.Solver.MemSafe.Aw.Bloom
import InitECandidate.Solver.MemSafe.Aw.Frame

/-!
# `execute_block`: the tail callees as `CallR` (part 1)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Eb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

theorem cr_bmi : CallR (σ := σ) (nm "build_mpt_indexed")
    (fun vs s Γ p => ArgsOK guestC Γ p Trie.bmiSig.params vs ∧ Trie.BmiPre vs s Γ) (fun _ _ _ _ => False)
    (fun vs s Γ p v t Γ' p' => RetOK Γ' p p' vs Trie.bmiSig.ret v ∧ (Trie.bmiSig.grows = false → NewFresh Γ Γ' p p) ∧
      Γ' = Γ) :=
  callR_mono_post (callR_of_sumSpecA (Pre := fun vs s Γ => Trie.BmiPre vs s Γ) (PW := fun _ _ _ _ => False)
    (Q := fun _ _ Γ _ _ Γ' => Γ' = Γ) Trie.sumSpecA_build_mpt_indexed (by decide) (by intro g _ h; cases h)
    (fun _ _ _ _ _ h => h.elim)) (fun _ _ _ _ _ _ _ _ hq => hq)

theorem cr_crh : CallR (σ := σ) (nm "compute_requests_hash")
    (fun vs s Γ p => ArgsOK guestC Γ p Exb.crhSig.params vs ∧ Exb.CrhPre vs s Γ) (fun _ _ _ _ => False)
    (fun vs s Γ p v t Γ' p' => RetOK Γ' p p' vs Exb.crhSig.ret v ∧ (Exb.crhSig.grows = false → NewFresh Γ Γ' p p)) :=
  callR_mono_post (callR_of_sumSpecA (Pre := fun vs s Γ => Exb.CrhPre vs s Γ) (PW := fun _ _ _ _ => False)
    (Q := fun _ _ Γ _ _ Γ' => Dn.ScrOld Γ Γ') Exb.sumSpecA_compute_requests_hash (by decide) (by intro g _ h; cases h)
    (fun _ _ _ _ _ h => h.elim)) (fun _ _ _ _ _ _ _ _ hq => ⟨hq.1, hq.2.1⟩)

theorem csok_capsX : CsOK Trie.capsX := by
  refine ⟨?_, ?_, ?_⟩
  · decide
  · decide
  · decide

theorem cr_csr : CallR (σ := σ) (nm "compute_state_root")
    (fun vs s Γ p => ArgsOK guestC Γ p Trie.csrSig.params vs) (fun _ _ _ _ => False)
    (fun vs s Γ p v t Γ' p' => RetOK Γ' p p' vs Trie.csrSig.ret v ∧ True) := by
  have h := callR_of_sumSpecA (σ := σ) (Pre := fun _ _ _ => True) (PW := fun _ s Γ a => CapPW Trie.capsX s Γ a)
    (Q := fun vs s Γ r t Γ' => Dn.ScrOld Γ Γ' ∧ ∀ v, r = .returned v → ∀ p0 p', ptrsOf s = some p0 → ptrsOf t = some p' → True)
    Trie.sumSpecA_compute_state_root (by decide) (by intro g _ h; cases h) ?_
  · exact callR_mono_post (callR_pre h (fun _ _ _ _ _ _ hpre => ⟨hpre, trivial⟩)) (fun _ _ _ _ _ _ _ _ hq => ⟨hq.1, trivial⟩)
  · intro vs s Γ a hG hw
    obtain ⟨q, hq, hord, hL, -⟩ := hG
    exact capPW_notBP csok_capsX hord hL hw

end InitECandidate.Solver.MemSafe.Eb
