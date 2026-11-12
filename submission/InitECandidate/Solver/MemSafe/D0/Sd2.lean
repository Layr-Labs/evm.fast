import InitECandidate.Solver.MemSafe.D0.Sd1
import InitECandidate.Solver.MemSafe.D0.Te

/-!
# `htab_set`, `set_code` and `recover_authority` in the `KP` shape
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.D0
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.MemSafe.Wire

variable {σ : Type}

/-- The cells `htab_set`'s capabilities allow lie in `PWtopM []`. -/
theorem ht_pw {H : Hooks σ} {vs : List (ValueHOL 64)} {Γ : Gam} {s : State σ}
    (hG : G guestC H Γ s) {a : BitVec 64} (hw : CapPW (HtabEntries.capsHT tHTh20) s Γ a) :
    PWtopM tEV tCK [] vs s Γ a := by
  obtain ⟨c, hc, ⟨e, -, k, hk, -⟩ | ⟨hall, e, he, hty, k, hks, rfl⟩⟩ := hw
  · simp only [HtabEntries.capsHT, List.mem_cons, List.mem_nil_iff, or_false] at hc
    rcases hc with rfl | rfl <;> simp at hk
  · refine noFrameM_cell hG he hks ?_ ?_
    · simp only [HtabEntries.capsHT, List.mem_cons, List.mem_nil_iff, or_false] at hc
      rcases hty with h | h
      · rcases hc with rfl | rfl <;> (rw [h]; decide)
      · have := guestSt_own _ h
        exact ⟨fun h' => (by rw [h', guestSt_frames.1] at this; cases this),
          fun h' => (by rw [h', guestSt_frames.2] at this; cases this)⟩
    · simp only [HtabEntries.capsHT, List.mem_cons, List.mem_nil_iff, or_false] at hc
      rcases hty with h | h
      · rcases hc with rfl | rfl <;> (rw [h]; decide)
      · intro hm
        have := guestSt_own _ h
        rw [guestSt_msgTys _ hm] at this; cases this

theorem hs_kp : SumSpecA σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "htab_set")
    (HtabEntries.setSig tHTh20) (fun _ _ _ => True) (PWtopM tEV tCK [])
    (fun _ _ _ _ _ _ => True) := by
  have hc : CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "htab_set")
      (HtabEntries.setSig tHTh20) (HtabEntries.capsHT tHTh20) := ctab% tabJL_guestR
  intro vs body callee rs hl s hs hloc r hr hg hna Γ hG hargs _
  obtain ⟨Γ', p, p', core, -⟩ := hc vs body callee rs hl s hs hloc r hr hg hna Γ hG hargs
    (fun c hc' h => by
      simp only [HtabEntries.capsHT, List.mem_cons, List.mem_nil_iff, or_false] at hc'
      rcases hc' with rfl | rfl <;> exact absurd rfl h)
  exact ⟨Γ', p, p', sumCore_pw core fun a ⟨hpc, hw⟩ => ⟨hpc, ht_pw hG hw⟩, trivial⟩

theorem scCaps_g : ∀ c ∈ scCaps, c.g ≠ anyG → (c.g = nmJr ∧ c.t = tJOURNAL) ∨ (c.g = nmSk ∧ c.t = tB64) := by
  decide
theorem scCaps_st : ∀ c ∈ scCaps, c.ks = [] ∧ (c.all = true → guestSt c.t = true) := by decide

/-- `set_code(authority, code, n)` with `n ≤ 2^32` (from `SetCodeH`). -/
theorem sc_kp (hSC : SetCodeH σ) : SumSpecA σ guestCtx guestC (Hooks.guestHooksR (σ := σ))
    (nm "set_code") ⟨[.buf 20, .any, .any], [], [Hooks.gJn], true⟩
    (fun vs s _ => JrNZ s ∧ ∃ n : BitVec 64, vs[2]? = some (.val (.word n)) ∧ n.toNat ≤ 2 ^ 32)
    (PWtopM tEV tCK []) (fun _ _ _ _ _ _ => True) := by
  intro vs body callee rs hl s hs hloc r hr hg hna Γ hG hargs ⟨hJ, n, hn⟩
  obtain ⟨Γ', p, p', core, hq⟩ := hSC vs body callee rs hl s hs hloc r hr hg hna Γ hG hargs
    ⟨reqOK_jrs scCaps_g hG hJ, n, hn⟩
  exact ⟨Γ', p, p', sumCore_pw core fun a ⟨hpc, hw⟩ => ⟨hpc, caps_pw scCaps_st hG hw⟩, hq⟩

/-- `recover_authority(auth)` (from `RaH`). -/
theorem ra_kp (hRA : RaH σ) : SumSpecA σ guestCtx guestC (Hooks.guestHooksR (σ := σ))
    (nm "recover_authority") ⟨[.any], [], [], true⟩ AuthArg (PWtopM tEV tCK []) RaQ := by
  intro vs body callee rs hl s hs hloc r hr hg hna Γ hG hargs hpre
  obtain ⟨Γ', p, p', core, hq⟩ := hRA vs body callee rs hl s hs hloc r hr hg hna Γ hG hargs hpre
  exact ⟨Γ', p, p', sumCore_pw core fun a ⟨hpc, hw⟩ => hw.elim, hq⟩

end InitECandidate.Solver.MemSafe.D0

#print axioms InitECandidate.Solver.MemSafe.D0.hs_kp
#print axioms InitECandidate.Solver.MemSafe.D0.sc_kp
#print axioms InitECandidate.Solver.MemSafe.D0.ra_kp
