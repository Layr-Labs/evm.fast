import InitECandidate.Solver.SourceCost.LoopExtra.AddrLoop
import InitECandidate.Solver.MemSafe.Helpers.Mem
import InitECandidate.Solver.SourceCost.Table

/-! Every continuing memory-copy iteration accesses mapped memory. Reuse the
address-domain loop bound for each of the four installed copy loops. -/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace BoundedCopyCosts
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Helpers

private abbrev slots : Nat := 2 ^ 35 + alignSlack 64 + 1
abbrev copyPrice : Nat := (slots + slots) + (slots + (slots + 0))

private theorem block_zero {σ : Type} {d i : MlS} {k : Nat}
    (stores : List (SK × Nat × ExpHOL 64)) : Cost σ guestCtx (blk d i k stores) 0 := by
  induction stores with
  | nil => exact cost_assign _ _ _
  | cons cell rest ih =>
    rcases cell with ⟨kind, off, val⟩
    cases kind with
    | w => exact cost_seq (Bp := 0) (Bq := 0) (cost_store _ _) ih
    | b => exact cost_seq (Bp := 0) (Bq := 0) (cost_storeByte _ _) ih

private theorem word_read {σ : Type} {s : PanSemStateFiniteExact 64 σ} {a e : ExpHOL 64}
    (h : (evaluateHOLFiniteState s (.store a (.load .one e))).1 = none) :
    ∃ (inst : DecidablePred s.toExact.memaddrs) (word : BitVec 64),
      @evalHOLExact 64 σ _ s.toExact inst e = some (.val (.word word)) ∧ Hit s.memaddrs word := by
  rw [evaluateHOLFiniteState_eq_evaluate_def] at h
  dsimp only at h
  split at h
  · split at h
    · rename_i v hv
      simp only [evalHOLExact] at hv
      split at hv
      · split at hv
        · rename_i word hw
          simp only [memLoadHOLExact] at hv
          split at hv
          · rename_i hd
            exact ⟨_, word, hw, Or.inl hd⟩
          · simp at hv
        · simp at hv
      · simp at hv
    · simp at h
  · simp at h

private theorem byte_read {σ : Type} {s : PanSemStateFiniteExact 64 σ} {a e : ExpHOL 64}
    (h : (evaluateHOLFiniteState s (.storeByte a (.loadByte e))).1 = none) :
    ∃ (inst : DecidablePred s.toExact.memaddrs) (word : BitVec 64),
      @evalHOLExact 64 σ _ s.toExact inst e = some (.val (.word word)) ∧ Hit s.memaddrs word := by
  rw [evaluateHOLFiniteState_eq_evaluate_def] at h
  dsimp only at h
  split at h
  · split at h
    · rename_i v hv
      simp only [evalHOLExact] at hv
      split at hv
      · rename_i word hw
        obtain ⟨b, hb, -⟩ := Option.map_eq_some_iff.mp hv
        unfold panMemLoadByteHOL at hb
        dsimp only at hb
        split at hb
        · rename_i hd
          exact ⟨_, word, hw, Or.inr hd⟩
        · simp at hb
      · simp at hv
    · simp at h
  · simp at h

private theorem first_read {σ : Type} {s : PanSemStateFiniteExact 64 σ} {k : Nat}
    {kind : SK} {rest : List Nat} (h : Completes s (blk dN iN k (cpL kind (0 :: rest)))) :
    ∃ w, addrOf (lv sN) iN s = some w ∧ Hit s.memaddrs w := by
  have hb : isBase iN (lv sN : ExpHOL 64) = true := by decide
  cases kind with
  | w =>
    obtain ⟨inst, w, hw, hm⟩ := word_read (seq_completes (noCont_store _ _) h)
    exact ⟨w, eval_addr inst hb hw, hm⟩
  | b =>
    obtain ⟨inst, w, hw, hm⟩ := byte_read (seq_completes (noCont_storeByte _ _) h)
    exact ⟨w, eval_addr inst hb hw, hm⟩

private theorem loop_cost {σ : Type} {c : ExpHOL 64} {k : Nat}
    {kind : SK} {rest : List Nat}
    (hStep : stepsRB iN addrStepMax [] (blk dN iN k (cpL kind (0 :: rest))) = true)
    (hKeep : baseKeptB (lv sN) (blk dN iN k (cpL kind (0 :: rest))) = true) :
    Cost σ guestCtx (.while c (blk dN iN k (cpL kind (0 :: rest)))) slots := by
  obtain ⟨L, hL, ⟨lo, hdom⟩, -, hSize⟩ := guestCtx_bounded
  have hLs : L + alignSlack 64 ≤ 2 ^ 64 := by omega
  have hbody := block_zero (σ := σ) (d := dN) (i := iN) (k := k) (cpL kind (0 :: rest))
  refine Cost.mono (cost_while_addr (addrOf (lv sN) iN) lo (L + alignSlack 64)
    addrStepMax (by omega) hbody (fun _ => rfl) ?_) ?_
  · intro t ht hc
    obtain ⟨w, hw, hhit⟩ := first_read hc
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

private theorem copy_body {σ : Type} : Cost σ guestCtx memcpyBody copyPrice := by
  unfold memcpyBody memSkel
  refine cost_dec (cost_seq (Bp := slots + slots) (Bq := slots + (slots + 0)) ?_ ?_)
  · refine Cost.mono (cost_ite (Ba := slots + slots) (Bb := 0) ?_ cost_skip)
      (by rw [Nat.max_zero])
    exact cost_seq (Bp := slots) (Bq := slots) (loop_cost (by decide) (by decide)) (loop_cost (by decide) (by decide))
  · exact cost_seq (Bp := slots) (Bq := slots + 0) (loop_cost (by decide) (by decide))
      (cost_seq (Bp := slots) (Bq := 0) (loop_cost (by decide) (by decide)) (cost_return _))

theorem memcpy_cost {σ : Type} : CalleeCost σ guestCtx (nm "memcpy") copyPrice := by
  intro vs actual callee rs lookup
  obtain ⟨ps, hc⟩ := InitECandidate.Solver.SourceCost.lookupCode_some lookup
  rw [guestCtx_code, code_memcpy] at hc
  have body : actual = memcpyBody := (congrArg (fun entry => entry.2.1) (Option.some.inj hc)).symm
  rw [body]
  exact copy_body

#print axioms memcpy_cost
end BoundedCopyCosts
