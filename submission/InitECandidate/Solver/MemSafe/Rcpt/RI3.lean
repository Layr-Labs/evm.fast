import InitECandidate.Solver.MemSafe.Rcpt.RI2

set_option autoImplicit false

/-!
# `logs_bloom` (a table entry) in the `RI` walk
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Rcpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Aw

variable {σ : Type} {X : Ctx 64}

def bloomSig : Sig := ⟨[.any, .buf 256], [], [], false⟩

/-- `logs_bloom(logs, out)`: `out` is an aligned block of 256 bytes, at or above the entry heap
pointer, inside the live heap. -/
def BloomPre (a : AwE σ) (vs : List (ValueHOL 64)) (s : State σ) : Prop :=
  CsPre a bloomSig vs s ∧ ∃ w : BitVec 64, argW vs 1 = some w ∧ a.p0.hp ≤ w.toNat ∧ w.toNat % 8 = 0

theorem isp_bloom {a : AwE σ} (hK : AwOK a) (hf : CSumm σ X a.C a.H (nm "logs_bloom") bloomSig [])
    (Fl : Nat) :
    ISp (RI a Fl) X (nm "logs_bloom") (BloomPre a) (fun _ _ _ => True) := by
  intro vs body callee rs hl s hs hloc r hr hinv hP v hv
  subst hv
  obtain ⟨⟨hlen, pp, hpp, hbd⟩, w, hw, hw1, hw2⟩ := hP
  have h1 := hf vs body callee rs hl s hs hloc _ hr (by simp [Good]) (by simp [Abortive])
  have hinv0 := hinv.1
  obtain ⟨Γ', p', hG, hp, e1, e2, e3, e4, e5, e6⟩ := hinv0
  rw [hpp] at hp
  cases hp
  obtain ⟨Γ'', p1, p2, core, -⟩ := h1 Γ' hG ⟨pp, hpp, argsOK_of_csPre hK e3 hlen hbd⟩
    (by intro c hc; exact absurd hc (by simp))
  have c1 := core.1
  rw [hpp] at c1
  cases c1
  obtain ⟨-, c2, c3, c4, c5, c6, c7, c8, c9, -⟩ := core
  have hord' : pp.Ordered := by
    obtain ⟨q, hq, ho, -⟩ := hG
    rw [hpp] at hq
    cases hq
    exact ho
  have hbw : w.toNat + 256 ≤ pp.hp := by
    obtain ⟨v1, hv1, hw'⟩ : ∃ v1, vs[1]? = some v1 ∧ wordOf v1 = some w := by
      cases h : vs[1]? with
      | none => simp [argW, h] at hw
      | some v1 => exact ⟨v1, rfl, by simpa [argW, h] using hw⟩
    obtain ⟨w', hw'', -, h2⟩ := hbd 1 (.buf 256) v1 (by simp [bloomSig]) hv1
    rw [hw'] at hw''
    cases hw''
    exact h2
  have hPW : ∀ (Γx : Gam) x, (ProtCell a.C Γx x ∧ CapPW [] s Γx x) → False := fun Γx x hx => by
    obtain ⟨-, ⟨c, hc, -⟩⟩ := hx
    simp at hc
  have hord0 := hK.hord
  have hpp_le : pp.hp ≤ heapEnd := by unfold Ptrs.Ordered at hord'; omega
  have hArg : ∀ x, ArgCells bloomSig.params vs x → a.p0.hp ≤ x.toNat ∧ x.toNat < heapEnd := by
    intro x ⟨i, w', hw', hc⟩
    rcases i with _ | _ | i
    · simp [bloomSig] at hc
    · simp only [argW] at hw hw'
      rw [hw'] at hw
      cases hw
      simp [bloomSig] at hc
      unfold Overlap at hc
      unfold Ptrs.Ordered at hord0
      omega
    · simp [bloomSig] at hc
  refine ⟨⟨awInv_cs (sg := bloomSig) (vs := vs) (r := .returned v) hK hinv.1 rfl (fun g hg => by simp [bloomSig] at hg) (fun x hx => by
      have := (hArg x hx).1; have := hK.hle; omega) ?_, ?_, ?_⟩, trivial⟩
  · intro Γ1 p1' hG1 hp1 hB1
    rw [hpp] at hp1
    cases hp1
    obtain ⟨Γ2, p3, p4, core2, -⟩ := h1 Γ1 hG1 ⟨pp, hpp, argsOK_of_csPre hK hB1 hlen hbd⟩
      (by intro c hc; exact absurd hc (by simp))
    have e1' := core2.1
    rw [hpp] at e1'
    cases e1'
    exact ⟨Γ2, p4, _, fun x hx => hPW Γ1 x hx, core2⟩
  · intro x hx
    have hnm : ¬ (WCell a.C Γ' x ∨ ArgCells bloomSig.params vs x ∨ ¬ pp.Allocated x.toNat ∨
        (ProtCell a.C Γ' x ∧ CapPW [] s Γ' x)) := by
      intro hh
      apply hx
      rcases hh with hh | hh | hh | hh
      · exact Or.inl (wcell_of_sub e2 (obj_hi_le hG) hh)
      · exact Or.inr (notAlloc_range hord0 (hArg x hh).1 (hArg x hh).2)
      · exact Or.inr (fun hal => hh (allocated_mono' e4 hal))
      · exact (hPW Γ' x hh).elim
    rw [c7 x hnm]
    exact hinv.2.1 x hx
  · obtain ⟨pf, hpf, hFl⟩ := hinv.2.2
    rw [hpp] at hpf
    cases hpf
    exact ⟨p2, c2, by unfold Ptrs.Mono at c3; omega⟩

end InitECandidate.Solver.MemSafe.Rcpt
