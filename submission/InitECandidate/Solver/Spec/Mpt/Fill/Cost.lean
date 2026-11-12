import InitECandidate.Solver.Spec.Mpt.Fill.Body

/-!
# The tick bound of the `_node_rlp_fill` loop

* `scan_cost`: the branch scan `while (i < 16) && (found == 0)`, from every state:
  `(2^64 + 1) * (Bs + 1)` (signed counter, as `cost_while_inc_less`).
* `fillBody_cost`: one iteration, from every state, at most `fillBodyB`.
* `fillLoop_costP`: the loop from `FInv`: at most `(fillM + 1) * (fillBodyB + 1)` with
  `fillM = 521216` (`fMu ≤ fillM`, and every iteration lowers `fMu`).
* `costP_decCall`: `var x = f(args); k` against an all-states callee cost and a callee
  specification.
-/

namespace InitECandidate.Solver.Spec.Mpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

open MemSafe (rd ptrsOf Ptrs heapEnd heapBase scratchEnd gHeap gFrame gScratch gword)

/-! ## The branch scan loop, from every state -/

theorem scanCond_inv {s : PanSemStateFiniteExact 64 σ} (h : CondTrue s scanCond) :
    ∃ I : BitVec 64, s.locals.lookup (nm "i") = some (.val (.word I)) ∧
      Compiler.Encoders.Asm.holAsmSignedLess I (BitVec.ofNat 64 16) = true := by
  obtain ⟨w, hw, hw0⟩ := h
  obtain ⟨ws, hws, hop⟩ := ev_op_inv hw
  obtain ⟨v1, r1, e1, hv1, hr1⟩ := evs_cons_inv hws
  obtain ⟨v2, r2, e2, hv2, hr2⟩ := evs_cons_inv hr1
  simp only [evs, evalListHOLExact, Option.some.injEq] at hr2
  subst hr2; subst e2
  rcases ws with _ | ⟨a, _ | ⟨b, _ | ⟨c, ws⟩⟩⟩ <;>
    simp only [List.map_cons, List.map_nil, List.cons.injEq, reduceCtorEq,
      and_false, and_true] at e1
  obtain ⟨rfl, rfl⟩ := e1
  obtain ⟨x, y, hx, hy, hav⟩ := ev_cmp_inv hv1
  rw [ev_cw] at hx; cases hx
  obtain ⟨I, z, hI, hz, hyv⟩ := ev_cmp_inv hy
  rw [ev_cw] at hz; cases hz
  rw [ev_lv] at hI
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hav hyv
  subst hav; subst hyv
  refine ⟨I, hI, ?_⟩
  by_contra hn
  simp only [Bool.not_eq_true] at hn
  simp [wordCmpHOL, hn, wordOpHOL, wordOp] at hop
  exact hw0 (hop.symm.trans BitVec.zero_and)

theorem scan_cost {Bs : Nat} (hb : Cost σ X scanBody Bs) :
    Cost σ X (.while scanCond scanBody) ((2 ^ 64 + 1) * (Bs + 1)) := by
  have hs : Steps σ (nm "i") (· + 1) scanBody := stepsB_sound (nm "i") true scanBody (by decide)
  let μ : PanSemStateFiniteExact 64 σ → Nat := fun s =>
    match s.locals.lookup (nm "i") with
    | some (.val (.word w)) => 2 ^ 64 - signedKey w
    | _ => 0
  refine cost_while μ (2 ^ 64) hb ?_ ?_
  · intro s _ _
    simp only [μ]
    split
    · exact Nat.sub_le _ _
    · exact Nat.zero_le _
  · intro s _ hcond _ hexit
    obtain ⟨v, hv, hlt⟩ := scanCond_inv hcond
    have hv' : (decClockHOLFinite s).locals.lookup (nm "i") = some (.val (.word v)) := hv
    have hafter := hs _ v hv' hexit
    simp only [μ, hafter, hv]
    rw [signedKey_succ hlt]
    have := signedKey_lt (v + 1)
    rw [signedKey_succ hlt] at this
    omega

/-! ## One iteration, from every state -/

/-- The cost of one iteration. -/
def fillBodyB (Bn Ba Bbeg Bfin : Nat) : Nat := (2 ^ 64 + 1) * (Bn + 2) + (Ba + Bbeg + Bfin + 2)

theorem nohandler {r : Option (VarKind × MlS)} : ∀ r' hid hv (hp : ProgHOL 64),
    (some (r, none) : Option (Option (VarKind × MlS) × Option (MlS × MlS × ProgHOL 64))) =
      some (r', some (hid, hv, hp)) → Cost σ X hp 0 := by
  intro _ _ _ _ h; cases h

theorem fillBody_cost {Bn Ba Bbeg Bfin : Nat} (hn : CalleeCost σ X (nm "_node_needs_rlp") Bn)
    (ha : CalleeCost σ X (nm "scratch_alloc") Ba) (hb : CalleeCost σ X (nm "_node_rlp_begin") Bbeg)
    (hf : CalleeCost σ X (nm "_node_rlp_finish") Bfin) :
    Cost σ X fillBody (fillBodyB Bn Ba Bbeg Bfin) := by
  have hN : Cost σ X callNeeds (1 + Bn + 0) := cost_call (Bh := 0) hn nohandler
  have hS : Cost σ X scanBody (0 + (0 + (1 + Bn + 0))) :=
    cost_seq (cost_assign _ _ _) (cost_seq (cost_assign _ _ _) hN)
  have hE : Cost σ X extArm (max (0 + (0 + (1 + Bn + 0))) 0) :=
    cost_ite (cost_seq (cost_store _ _) (cost_seq (cost_assign _ _ _) hN)) cost_skip
  have hBr : Cost σ X brArm (max ((2 ^ 64 + 1) * ((0 + (0 + (1 + Bn + 0))) + 1) + 0) 0) :=
    cost_ite (cost_dec (cost_seq (scan_cost hS) (cost_store _ _))) cost_skip
  have hP : Cost σ X pushArm (1 + Ba + (0 + (0 + (0 + ((1 + Bbeg + 0) + 0))))) :=
    cost_decCall ha (cost_seq (cost_store _ _) (cost_seq (cost_store _ _) (cost_seq (cost_store _ _)
      (cost_seq (cost_call (Bh := 0) hb nohandler) (cost_assign _ _ _)))))
  have hQ : Cost σ X popArm ((1 + Bfin + 0) + 0) :=
    cost_seq (cost_call (Bh := 0) hf nohandler) (cost_assign _ _ _)
  have hc := cost_dec (n := nm "nd") (sh := .one) (e := .load .one (.op .add [lv (nm "top"), cw 8]))
    (cost_dec (n := nm "k") (sh := .one) (e := .load .one (.op .add [lv (nm "nd"), cw 0]))
      (cost_dec (n := nm "child") (sh := .one) (e := cw 0)
        (cost_dec (n := nm "found") (sh := .one) (e := cw 0)
          (cost_seq (cost_ite (c := .cmp .equal (lv (nm "k")) (cw 2)) hE hBr)
            (cost_ite (c := .cmp .notEqual (lv (nm "found")) (cw 0)) hP hQ)))))
  unfold fillBody
  refine hc.mono ?_
  unfold fillBodyB
  have : 1 + Bn ≤ (2 ^ 64 + 1) * (Bn + 2) :=
    le_trans (by omega) (Nat.le_mul_of_pos_left (Bn + 2) (by decide : 0 < 2 ^ 64 + 1))
  simp only [Nat.add_zero, Nat.zero_add]
  rw [show 1 + Bn + 1 = Bn + 2 by omega]
  omega

/-! ## The loop -/

theorem fillLoop_costP (hC : X.code.lookup = guestCode) (hNS : MemSafe.NullSafe X)
    (hbeg : BeginSpec σ X) (hfin : FinishSpec σ X) {Bn Ba Bbeg Bfin : Nat}
    (hn : CalleeCost σ X (nm "_node_needs_rlp") Bn) (ha : CalleeCost σ X (nm "scratch_alloc") Ba)
    (hb : CalleeCost σ X (nm "_node_rlp_begin") Bbeg)
    (hf : CalleeCost σ X (nm "_node_rlp_finish") Bfin) {Nd : BitVec 64 → Prop} {HP0 S0 : Nat} :
    Inv.CostP σ X (FInv Nd HP0 S0) (.while fillCond fillBody)
      ((fillM + 1) * (fillBodyB Bn Ba Bbeg Bfin + 1)) := by
  refine Inv.costP_while fMu fillM (fun s h => (finv_congr (s := s) (t := decClockHOLFinite s) rfl rfl rfl rfl h).1) (fun _ => rfl)
    (Inv.costP_of_cost (fillBody_cost hn ha hb hf)) ?_ (fun s _ hI _ => fMu_le hI) ?_
  · intro s hs ⟨hI, hc⟩ ht
    exact fun hr => (body_step hC hNS hbeg hfin (fMu s) s hs ⟨hI, hc, rfl⟩ ht hr).1
  · intro k s hs ⟨hI, hc, hk⟩ ht
    exact fun hr => (body_step hC hNS hbeg hfin k s hs ⟨hI, hc, hk⟩ ht hr).2

/-! ## `var x = f(args); k` under a precondition -/

theorem costP_decCall {P : PanSemStateFiniteExact 64 σ → Prop} {rn : MlS} {sh : ShapeHOL}
    {f : MlS} {args : List (ExpHOL 64)} {k : ProgHOL 64}
    {R : List (ValueHOL 64) → PanSemStateFiniteExact 64 σ → PanSemResultExact 64 →
      PanSemStateFiniteExact 64 σ → Prop} {Bf Bk : Nat}
    (hf : CalleeCost σ X f Bf) (hR : FunSpec σ X f R)
    (hk : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs → ∀ callee v st,
      R vs (callEntryStateHOLFinite s callee) (.returned v) st → InCtx st X →
        Inv.CostP σ X (fun t => t = setVarHOLFinite rn v { st with locals := s.locals }) k Bk) :
    Inv.CostP σ X P (.decCall rn sh f args k) (1 + Bf + Bk) := by
  intro s hs hp
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.decCall rn sh f args k)]
  dsimp only
  split
  · intro _; (try dsimp only); omega
  · rename_i values hvals
    rw [hs.1]
    split
    · intro _; (try dsimp only); omega
    · rename_i body callee rs hlook
      split
      · intro h; exact absurd rfl h.1
      · rename_i hclock
        have hb : ∀ r st, evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body = (r, st) →
            Good r → s.clock ≤ st.clock + 1 + Bf ∧ InCtx st X := by
          intro r st heq hr
          have := hf values body callee rs hlook (callEntryStateHOLFinite s callee)
            (by exact hs) (by rw [heq]; exact hr)
          rw [heq] at this
          simp only [callEntryStateHOLFinite] at this
          exact ⟨by omega, this.2⟩
        have hspec := hR values body callee rs hlook _ (entry_inCtx hs callee) rfl
        cases ho : evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body with
        | mk r st =>
          rw [ho] at hspec
          dsimp only
          cases r with
          | none =>
            intro _
            obtain ⟨h1, h2⟩ := hb _ _ ho (by simp [Good])
            (try dsimp only); omega
          | some r =>
            cases r with
            | returned v =>
              dsimp only
              split
              · intro hto
                obtain ⟨h1, h2⟩ := hb _ _ ho (by simp [Good])
                have g1 := hk s hs hp values hvals callee v st (hspec _ rfl) h2 _ (by exact h2) rfl hto
                simp only [setVarHOLFinite] at g1 ⊢
                omega
              · intro _
                obtain ⟨h1, h2⟩ := hb _ _ ho (by simp [Good])
                (try dsimp only); omega
            | _ =>
              dsimp only
              intro hto
              obtain ⟨h1, h2⟩ := hb _ _ ho (by simp_all [Good])
              (try simp only [emptyLocalsHOLFinite]); omega

end InitECandidate.Solver.Spec.Mpt
