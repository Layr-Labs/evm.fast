import InitECandidate.Solver.TxAl.Cost

/-!
# Loops whose body starts with a strided word load

`while c { var x = lds 1 (base + i * k); rest }` where the body steps `i` by one and keeps
`base`: every completed iteration loaded the mapped address `base + i * k`, which moves by `k`.
With `1 ≤ k ≤ 4096` the loop runs at most `2 ^ 35 + 9` iterations in the guest context.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000

namespace InitECandidate.Solver.AddrDec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.TxAl

variable {σ : Type}

def ldBody (x base i : MlS) (k : Nat) (rest : ProgHOL 64) : ProgHOL 64 :=
  .dec x .one (.load .one (.op .add [.var .local base, .panop .mul [.var .local i, cw k]])) rest

def strideAddr (base i : MlS) (k : Nat) (t : PanSemStateFiniteExact 64 σ) : Option (BitVec 64) :=
  match wordLocal t base, wordLocal t i with
  | some R, some I => some (R + I * BitVec.ofNat 64 k)
  | _, _ => none

theorem ld_hit {t : PanSemStateFiniteExact 64 σ} {x base i : MlS} {k : Nat} {rest : ProgHOL 64}
    (hc : Completes t (ldBody x base i k rest)) :
    ∃ R I : BitVec 64, t.locals.lookup base = some (.val (.word R)) ∧
      t.locals.lookup i = some (.val (.word I)) ∧ t.memaddrs (R + I * BitVec.ofNat 64 k) := by
  unfold ldBody at hc
  obtain ⟨v1, hv1, -⟩ := dec_completes hc
  simp only [ev, evalHOLExact] at hv1
  split at hv1
  · split at hv1
    · rename_i w hw
      have hw' : ev t (.op .add [.var .local base, .panop .mul [.var .local i, cw k]]) =
          some (.val (.word w)) := hw
      obtain ⟨x0, y0, hx, hy, hxy⟩ := InitECandidate.Solver.Spec.Inv.ev_add2_inv hw'
      obtain ⟨a, b, ha, hb, hab⟩ := InitECandidate.Solver.Spec.Inv.ev_mul2_inv hy
      rw [ev_cw] at hb
      cases hb
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hab hxy
      subst hab
      refine ⟨x0, a, hx, ha, ?_⟩
      rw [memLoadHOLExact] at hv1
      split at hv1
      · rename_i hd
        rw [hxy] at hd
        exact hd
      · simp at hv1
    · simp at hv1
  · simp at hv1

theorem cost_while_ld {c : ExpHOL 64} {x base i : MlS} {k : Nat} {rest : ProgHOL 64} {B : Nat}
    (hk1 : 1 ≤ k) (hk2 : k ≤ 4096)
    (hb : Cost σ guestCtx (ldBody x base i k rest) B)
    (hsteps : stepsB i true (ldBody x base i k rest) = true)
    (hkeeps : keepsB base (ldBody x base i k rest) = true) :
    Cost σ guestCtx (.while c (ldBody x base i k rest)) ((2 ^ 35 + 9) * (B + 1)) := by
  obtain ⟨L, hL, ⟨lo, hdom⟩, -, hL35⟩ := guestCtx_bounded
  have hLs : L + alignSlack 64 ≤ 2 ^ 64 := by unfold addrStepMax at hL; omega
  have hsl : alignSlack 64 = 8 := by decide
  have hkN : (BitVec.ofNat 64 k).toNat = k := by
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
  refine Cost.mono (cost_while_addr (strideAddr base i k) lo (L + alignSlack 64) k
    (by unfold addrStepMax at hL; omega) hb (fun _ => rfl) ?_) ?_
  · intro t ht hc
    obtain ⟨R, I, hR, hI, hm⟩ := ld_hit hc
    have hw : strideAddr base i k t = some (R + I * BitVec.ofNat 64 k) := by
      unfold strideAddr wordLocal; rw [hR, hI]
    refine ⟨R + I * BitVec.ofNat 64 k, hw, hit_offset hdom hLs (Or.inl (ht.2.1 ▸ hm)),
      BitVec.ofNat 64 k, by omega, by omega, ?_⟩
    have hI' := stepsB_sound (σ := σ) i true _ hsteps t I hI hc
    have hR' := keepsB_sound (σ := σ) base _ hkeeps t
      (by rcases hc with h | h <;> simp [LoopExit, h])
    unfold strideAddr wordLocal
    rw [hR', hR, hI']
    simp only [stepFun, if_true]
    congr 1
    rw [BitVec.add_mul, BitVec.add_assoc]
    congr 2
    simp
  · rw [hsl]
    exact Nat.mul_le_mul_right _ (by omega)

end InitECandidate.Solver.AddrDec
