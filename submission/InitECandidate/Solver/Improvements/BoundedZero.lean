import InitECandidate.Solver.SourceCost.LoopExtra.AddrLoop
import InitECandidate.Solver.MemSafe.Helpers.Mem
import InitECandidate.Solver.SourceCost.Table
import InitECandidate.Solver.Spec.Inv.Bytes

/-! The first store of every continuing zero-fill iteration lies in mapped memory. -/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace BoundedZero
open InitECandidate.Solver
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Helpers

private abbrev slots : Nat := 2 ^ 35 + alignSlack 64 + 1
abbrev zeroPrice : Nat := (slots + slots) + (slots + (slots + 0))

private theorem block_zero {σ : Type} {d i : MlS} {k : Nat}
    (stores : List (SK × Nat × ExpHOL 64)) : Cost σ guestCtx (blk d i k stores) 0 := by
  induction stores with
  | nil => exact cost_assign _ _ _
  | cons cell rest ih =>
    rcases cell with ⟨kind, off, val⟩
    cases kind with
    | w => exact cost_seq (Bp := 0) (Bq := 0) (cost_store _ _) ih
    | b => exact cost_seq (Bp := 0) (Bq := 0) (cost_storeByte _ _) ih

private theorem first_write {σ : Type} {s : PanSemStateFiniteExact 64 σ} {k : Nat}
    {kind : SK} {rest : List Nat} (hs : InCtx s guestCtx)
    (h : Completes s (blk dN iN k (zL kind (0 :: rest)))) :
    ∃ w, addrOf (lv dN) iN s = some w ∧ Hit s.memaddrs w := by
  let a : ExpHOL 64 := .op .add [lv dN, lv iN]
  let hit := ∃ w, addrOf (lv dN) iN s = some w ∧ Hit s.memaddrs w
  have hw {w : BitVec 64} (ha : ev s a = some (.val (.word w))) :
      addrOf (lv dN) iN s = some w :=
    eval_addr _ (by decide : isBase iN (lv dN : ExpHOL 64) = true) ha
  cases kind with
  | w =>
    have first := seq_completes (noCont_store _ _) h
    change (evaluateHOLFiniteState s (.store a (cw 0))).1 = none at first
    have H : HoareG σ guestCtx (fun t => t = s) (.store a (cw 0)) (fun _ _ => hit) := by
      apply MemSafe.hoareG_store
      intro t _ he w v m ha hv hm
      subst t
      rw [ev_cw] at hv
      cases hv
      simp only [flattenHOL] at hm
      exact ⟨w, hw ha, Or.inl (store1_mod (m := s.memory) hm).2⟩
    exact H s hs rfl (by rw [first]; simp [Good])
  | b =>
    have first := seq_completes (noCont_storeByte _ _) h
    change (evaluateHOLFiniteState s (.storeByte a (cw 0))).1 = none at first
    have H : HoareG σ guestCtx (fun t => t = s) (.storeByte a (cw 0)) (fun _ _ => hit) := by
      apply MemSafe.hoareG_storeByte
      intro t _ he w x m ha _ hm
      subst t
      exact ⟨w, hw ha, Or.inr (Spec.Inv.storeByte_eq hm).1⟩
    exact H s hs rfl (by rw [first]; simp [Good])

private theorem loop_cost {σ : Type} {c : ExpHOL 64} {k : Nat}
    {kind : SK} {rest : List Nat}
    (hStep : stepsRB iN addrStepMax [] (blk dN iN k (zL kind (0 :: rest))) = true)
    (hKeep : baseKeptB (lv dN) (blk dN iN k (zL kind (0 :: rest))) = true) :
    Cost σ guestCtx (.while c (blk dN iN k (zL kind (0 :: rest)))) slots := by
  obtain ⟨L, hL, ⟨lo, hdom⟩, -, hSize⟩ := guestCtx_bounded
  have hLs : L + alignSlack 64 ≤ 2 ^ 64 := by omega
  have hbody := block_zero (σ := σ) (d := dN) (i := iN) (k := k) (zL kind (0 :: rest))
  refine Cost.mono (cost_while_addr (addrOf (lv dN) iN) lo (L + alignSlack 64)
    addrStepMax (by omega) hbody (fun _ => rfl) ?_) ?_
  · intro t ht hc
    obtain ⟨w, hw, hhit⟩ := first_write ht hc
    refine ⟨w, hw, hit_offset hdom hLs (ht.2.1 ▸ hhit), ?_⟩
    have hv := hw
    unfold addrOf at hv
    cases hidx : wordLocal t iN with
    | none => rw [hidx] at hv; split at hv <;> simp_all
    | some v =>
       have hlocal := wordLocal_some hidx
       obtain ⟨d, hd1, hd2, hnext⟩ := stepsRB_sound _ _ _ _ hStep t v hlocal (factsHold_nil t) hc
       exact ⟨d, hd1, hd2, addrOf_step hw hlocal hnext (baseKept hKeep hc)⟩
  · simp only [Nat.zero_add, Nat.mul_one]
    unfold slots
    omega

private theorem zero_body {σ : Type} : Cost σ guestCtx memzeroBody zeroPrice := by
  unfold memzeroBody memSkel
  refine cost_dec (cost_seq (Bp := slots + slots) (Bq := slots + (slots + 0)) ?_ ?_)
  · refine Cost.mono (cost_ite (Ba := slots + slots) (Bb := 0) ?_ cost_skip)
      (by rw [Nat.max_zero])
    exact cost_seq (Bp := slots) (Bq := slots) (loop_cost (by decide) (by decide)) (loop_cost (by decide) (by decide))
  · exact cost_seq (Bp := slots) (Bq := slots + 0) (loop_cost (by decide) (by decide))
      (cost_seq (Bp := slots) (Bq := 0) (loop_cost (by decide) (by decide)) (cost_return _))

theorem memzero_cost {σ : Type} : CalleeCost σ guestCtx (nm "memzero") zeroPrice := by
  intro vs actual callee rs lookup
  obtain ⟨ps, hc⟩ := InitECandidate.Solver.SourceCost.lookupCode_some lookup
  rw [guestCtx_code, code_memzero] at hc
  have body : actual = memzeroBody := (congrArg (fun entry => entry.2.1) (Option.some.inj hc)).symm
  rw [body]
  exact zero_body

#print axioms memzero_cost
end BoundedZero
