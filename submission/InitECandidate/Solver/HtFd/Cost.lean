import InitECandidate.Solver.HtFd.Defs
import InitECandidate.Solver.Improvements.AcceptedInitializedLoopCost
import InitECandidate.Solver.Improvements.BoundedInitializedLoop

/-!
# `htab_first_diff`: both loops bounded

* the bit loop `j = 0; while j < 8 { ...; j = j + 1 }` runs at most `8` iterations (measure
  `8 - j` under the invariant `j ≤ 8`);
* the byte loop `while i <+ key_len { var x = ld8 (a + i) ^ ld8 (b + i); ...; i = i + 1 }` loads the
  mapped byte `a + i` in every completed iteration, and the address moves by `1`, so
  `cost_while_addr` bounds it by the size of the memory domain.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.HtFd
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang
open Flapjack.Compiler.Encoders.Asm
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type}

def Le8 (s : PanSemStateFiniteExact 64 σ) : Prop :=
  ∃ v : BitVec 64, s.locals.lookup (nm "j") = some (.val (.word v)) ∧ v.toNat ≤ 8

theorem guard_lt8 {s : PanSemStateFiniteExact 64 σ} {v : BitVec 64}
    (hv : s.locals.lookup (nm "j") = some (.val (.word v))) (hle : v.toNat ≤ 8)
    (hc : CondTrue s (.cmp .less (.var .local (nm "j")) (cw 8))) : v.toNat < 8 := by
  obtain ⟨w, hw, hne⟩ := hc
  change ev s (.cmp .less (.var .local (nm "j")) (cw 8)) = some (.val (.word w)) at hw
  rw [ev_cmp (show ev s (.var .local (nm "j")) = some (.val (.word v)) from hv) (ev_cw s 8)] at hw
  cases hbool : wordCmpHOL .less v (BitVec.ofNat 64 8) with
  | true =>
    change holAsmSignedLess v (BitVec.ofNat 64 8) = true at hbool
    unfold holAsmSignedLess at hbool
    have hs : v.toNat < 2 ^ (64 - 1) := by
      show v.toNat < 2 ^ 63; omega
    simp only [hs, if_true] at hbool
    split at hbool
    · have := of_decide_eq_true hbool
      simpa using this
    · simp at hbool
  | false =>
    rw [hbool] at hw
    exact False.elim (hne (by simpa using hw.symm))

theorem jBody_steps : Steps σ (nm "j") (stepFun true) jBody :=
  stepsB_sound (nm "j") true jBody (by decide_cbv)

theorem jBody_cost : Cost σ guestCtx jBody 0 := by
  unfold jBody
  exact cost_seq (cost_ite (cost_return _) cost_skip) (cost_assign _ _ _)

theorem jWhile_cost :
    AcceptedLoopRules.CostP σ guestCtx Le8
      (.while (.cmp .less (.var .local (nm "j")) (cw 8)) jBody) ((8 + 1) * (0 + 1)) := by
  let μ : PanSemStateFiniteExact 64 σ → Nat := fun s => 8 - wordOf s (nm "j")
  refine AcceptedLoopRules.costP_while μ 8 ?_ (fun _ => rfl)
    (AcceptedLoopRules.costP_of_cost jBody_cost) ?_ ?_ ?_
  · rintro s ⟨v, hv, hn⟩
    exact ⟨v, hv, hn⟩
  · rintro s hctx ⟨⟨v, hv, hle⟩, hc⟩ tracked exit
    have hlt := guard_lt8 hv hle hc
    have after := jBody_steps s v hv exit
    refine ⟨v + 1, by simpa [stepFun] using after, ?_⟩
    have : (v + 1).toNat = v.toNat + 1 := by
      apply BitVec.toNat_add_of_lt
      have one : (1 : BitVec 64).toNat = 1 := by decide
      omega
    omega
  · intro s _ _ _
    exact Nat.sub_le _ _
  · rintro k s hctx ⟨⟨v, hv, hle⟩, hc, rank⟩ tracked exit
    have hlt := guard_lt8 hv hle hc
    have after := jBody_steps s v hv exit
    have inc : (v + 1).toNat = v.toNat + 1 := by
      apply BitVec.toNat_add_of_lt
      have one : (1 : BitVec 64).toNat = 1 := by decide
      omega
    change 8 - wordOf (evaluateHOLFiniteState s jBody).2 (nm "j") < k
    simp only [stepFun, if_true] at after
    simp only [wordOf, after, inc]
    change 8 - wordOf s (nm "j") = k at rank
    simp only [wordOf, hv] at rank
    omega

theorem jLoop_cost : Cost σ guestCtx jLoop 9 := by
  apply AcceptedLoopRules.cost_of_costP_true
  unfold jLoop
  refine AcceptedLoopRules.costP_dec fun s hctx hp v hv hshape => ?_
  have valueZero : v = .val (.word (BitVec.ofNat 64 0)) := by
    rw [ev_cw] at hv; exact (Option.some.inj hv).symm
  subst v
  refine (jWhile_cost).pre fun t hctx' hteq => ?_
  subst t
  refine ⟨0, ?_, by decide⟩
  simp [setVarHOLFinite, FUPDATE]


theorem iBody_cost : Cost σ guestCtx iBody (max 9 0 + 0) :=
  cost_dec (cost_seq (cost_ite jLoop_cost cost_skip) (cost_assign _ _ _))

def byteAddr (t : PanSemStateFiniteExact 64 σ) : Option (BitVec 64) :=
  match wordLocal t (nm "a"), wordLocal t (nm "i") with
  | some A, some I => some (A + I)
  | _, _ => none

theorem iBody_hit {t : PanSemStateFiniteExact 64 σ} (hc : Completes t iBody) :
    ∃ A I : BitVec 64, t.locals.lookup (nm "a") = some (.val (.word A)) ∧
      t.locals.lookup (nm "i") = some (.val (.word I)) ∧ Hit t.memaddrs (A + I) := by
  unfold iBody at hc
  obtain ⟨v1, hv1, -⟩ := dec_completes hc
  unfold xExp at hv1
  obtain ⟨x, y, hx, -, -⟩ := InitECandidate.Solver.Spec.Inv.ev_op2_inv hv1
  obtain ⟨w, hw, hhit⟩ := ev_loadByte_hit hx
  obtain ⟨A, I, hA, hI, hAI⟩ := InitECandidate.Solver.Spec.Inv.ev_add2_inv hw
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hAI
  subst hAI
  exact ⟨A, I, hA, hI, hhit⟩

theorem iSteps : stepsB (nm "i") true iBody = true := by decide_cbv
theorem aKeeps : keepsB (nm "a") iBody = true := by decide_cbv

theorem iLoop_cost :
    Cost σ guestCtx (.while (.cmp .lower (.var .local (nm "i")) (.var .local (nm "key_len"))) iBody)
      ((2 ^ 35 + 9) * (max 9 0 + 0 + 1)) := by
  obtain ⟨L, hL, ⟨lo, hdom⟩, -, hL35⟩ := guestCtx_bounded
  have hLs : L + alignSlack 64 ≤ 2 ^ 64 := by unfold addrStepMax at hL; omega
  have hsl : alignSlack 64 = 8 := by decide
  refine Cost.mono (cost_while_addr byteAddr lo (L + alignSlack 64) 1
    (by unfold addrStepMax at hL; omega) iBody_cost (fun _ => rfl) ?_) ?_
  · intro t ht hc
    obtain ⟨A, I, hA, hI, hm⟩ := iBody_hit hc
    have hw : byteAddr t = some (A + I) := by
      unfold byteAddr wordLocal; rw [hA, hI]
    refine ⟨A + I, hw, hit_offset hdom hLs (ht.2.1 ▸ hm), 1, by decide, by decide, ?_⟩
    have hI' := stepsB_sound (σ := σ) (nm "i") true iBody iSteps t I hI hc
    have hA' := keepsB_sound (σ := σ) (nm "a") iBody aKeeps t
      (by rcases hc with h | h <;> simp [LoopExit, h])
    unfold byteAddr wordLocal
    rw [hA', hA, hI']
    simp only [stepFun, if_true]
    congr 1
    rw [BitVec.add_assoc]
  · rw [hsl]
    exact Nat.mul_le_mul_right _ (by omega)

abbrev fdPrice : Nat := (2 ^ 35 + 9) * (max 9 0 + 0 + 1) + 0

theorem fd_cost : CalleeCost σ guestCtx (nm "htab_first_diff") fdPrice := by
  intro vs actual callee rs lookup
  obtain ⟨ps, hc⟩ := InitECandidate.Solver.SourceCost.lookupCode_some lookup
  rw [guestCtx_code, code_fd] at hc
  have body : actual = fdBody := (congrArg (fun entry => entry.2.1) (Option.some.inj hc)).symm
  rw [body]
  unfold fdBody
  exact cost_dec (cost_seq iLoop_cost (cost_return _))

#print axioms fd_cost

end InitECandidate.Solver.HtFd
