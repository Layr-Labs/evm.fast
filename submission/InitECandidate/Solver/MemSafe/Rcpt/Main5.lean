import InitECandidate.Solver.MemSafe.Rcpt.Main4

set_option autoImplicit false

/-!
# `encode_receipt`: assembly of `erK`, and the form of the result
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
open InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Aw

variable {σ : Type} {X : Ctx 64}

theorem rcpt_K (hC : X.code.lookup = guestCode) (hA : AlignedDom X) {s : State σ} {Γ : Gam}
    {p : Ptrs} {h0 : Nat} (hK : AwOK (aOf s Γ p h0)) {logs CG : BitVec 64} {B S : Nat}
    (hLB : CSumm σ X guestC (Hooks.guestHooksR (σ := σ)) (nm "logs_bloom") bloomSig [])
    (hLK : LogsK Γ p s.memory h0 logs) (hL : Layout guestC p Γ)
    (hSe : S = Sk s.memory logs (lgN s.memory logs))
    (hBp : p.hp ≤ B) (hBE : B + S + 416 ≤ heapEnd) :
    HoareG σ X (IPre (RI (aOf s Γ p h0) (B + S + 416)) (LK logs CG B)) erK
      (IQ (RI (aOf s Γ p h0) (B + S + 416)) (fun _ => True) (KRet B S)) :=
  rcpt_head hC hA hK hBp hBE fun P1 h1 h2 => rcpt_bloom hC hA hK hLB hLK hL hSe hBp hBE P1 h1 h2

/-- The statement of `Ptx.HypRcptFresh` (with `LogsK`). -/
def RcptOut (Γ : Gam) (p : Ptrs) (s t : State σ) (v : ValueHOL 64) : Prop :=
  ∃ (p' : Ptrs) (rp rl : BitVec 64), ptrsOf t = some p' ∧ flattenHOL v = [.word rp, .word rl] ∧
    1 ≤ rl.toNat ∧ ∃ buf n : Nat, buf % 8 = 0 ∧ n % 8 = 0 ∧ p.hp ≤ buf ∧ buf ≤ rp.toNat ∧
      rp.toNat + rl.toNat ≤ buf + n ∧ buf + n ≤ p'.hp ∧
      ModifiesOnly (fun x => WCell guestC Γ x ∨ (buf ≤ x.toNat ∧ x.toNat < buf + n) ∨
        ¬ p.Allocated x.toNat) s.memory t.memory

theorem rcpt_conv {s t : State σ} {Γ : Gam} {p : Ptrs} {h0 : Nat} {B S : Nat} {Fl : Nat}
    (hFl : B + S + 416 ≤ Fl) (hB8 : B % 8 = 0) (hBp : p.hp ≤ B) {v : ValueHOL 64}
    (hRI : RI (aOf s Γ p h0) Fl t) (hv : KRet B S v) : RcptOut Γ p s t v := by
  obtain ⟨rp, rl, rfl, h1, h2, h3⟩ := hv
  obtain ⟨pf, hpf, hfl⟩ := hRI.2.2
  have hord : pf.Ordered := by
    obtain ⟨Γ', p'', hG, hp, -⟩ := hRI.1
    obtain ⟨q, hq, ho, -⟩ := hG
    rw [hpf] at hq
    cases hq
    exact ho
  unfold Ptrs.Ordered at hord
  refine ⟨pf, rp, rl, hpf, by simp [flattenHOL], h3, B, pf.hp - B, hB8, by omega, hBp, h1, by omega,
    by omega, ?_⟩
  refine hRI.2.1.mono fun x hx => ?_
  rcases hx with h | h
  · exact Or.inl h
  · exact Or.inr (Or.inr h)

end InitECandidate.Solver.MemSafe.Rcpt
