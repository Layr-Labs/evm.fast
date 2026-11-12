import InitECandidate.Solver.Spec.Mpt.DelChain

/-!
# The unwind loop of `_mpt_delete_node_body`, under the record-chain invariant

```
while top != 0 {
  var fnode = ld (top + 8);
  if ld (top + 16) == 2 { res = _delete_ext_finish(fnode, ld (top + 24), ld (top + 32), res); }
  else { st fnode + 32 + ld (top + 32) * 8, res; res = _collapse_branch(fnode); }
  top = ld top; }
```

`UInv SE S0`: the allocator pointers are ordered with `scratch_ptr = SE`, and `top` heads a
`ChainOK` chain of records in `[SE, S0)`. The loop's own store lands below `heapEnd ≤ SE`
(`RecOK`: `fnode + 176 ≤ heapEnd`, index `< 16`), and the callees write only below `SE`
(`BelowSP`), so the chain survives, and each iteration moves `top` up by at least 40 bytes
or ends it (`unwind_step`). `delUnwind_costP`: at most `scratchEnd + 1` iterations.
-/

namespace InitECandidate.Solver.Spec.Mpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

open MemSafe (rd ptrsOf Ptrs heapEnd heapBase scratchEnd)

/-- The unwind invariant. -/
def UInv (SE S0 : Nat) (t : PanSemStateFiniteExact 64 σ) : Prop :=
  (∃ p : Ptrs, ptrsOf t = some p ∧ p.Ordered ∧ p.sp = SE) ∧ S0 ≤ scratchEnd ∧
    (∃ R : BitVec 64, t.locals.lookup (nm "res") = some (.val (.word R))) ∧
    ∃ T : BitVec 64, t.locals.lookup (nm "top") = some (.val (.word T)) ∧
      ChainOK t.memory SE S0 T

/-- The unwind measure. -/
def uMu (S0 : Nat) (t : PanSemStateFiniteExact 64 σ) : Nat :=
  if wl t (nm "top") = 0 then 0 else S0 - (wl t (nm "top")).toNat

theorem ptrsOf_frame {s t : PanSemStateFiniteExact 64 σ} (h : t.globals = s.globals) :
    ptrsOf t = ptrsOf s := by
  unfold ptrsOf MemSafe.gword; rw [h]

/-- The facts after the kind dispatch of one unwind iteration. -/
def UMid (SE : Nat) (M : MemSafe.Mem) (T : BitVec 64) (t : PanSemStateFiniteExact 64 σ) : Prop :=
  (∃ p : Ptrs, ptrsOf t = some p ∧ p.Ordered ∧ p.sp = SE) ∧
    t.locals.lookup (nm "top") = some (.val (.word T)) ∧
    (∃ R : BitVec 64, t.locals.lookup (nm "res") = some (.val (.word R))) ∧
    ∀ a : BitVec 64, SE ≤ a.toNat → t.memory a = M a

theorem heapEnd_le_sp {p : Ptrs} (h : p.Ordered) : heapEnd ≤ p.sp := by
  obtain ⟨-, -, h3, h4, -⟩ := h; omega

theorem all_word_eq : ∀ vs : List (ValueHOL 64), vs.all valueIsWord = true →
    vs = (vs.map valueWord).map (fun w => (.val (.word w) : ValueHOL 64))
  | [], _ => rfl
  | v :: vs, h => by
      simp only [List.all_cons, Bool.and_eq_true] at h
      obtain ⟨hv, hvs⟩ := h
      cases v with
      | val wl => cases wl with
        | word w =>
          simp only [List.map_cons, valueWord]
          exact congrArg _ (all_word_eq vs hvs)
      | rStruct _ => simp [valueIsWord] at hv
      | nStruct _ _ => simp [valueIsWord] at hv

theorem ev_op_inv {s : PanSemStateFiniteExact 64 σ} {o : BinOp} {es : List (ExpHOL 64)}
    {x : BitVec 64} (h : ev s (.op o es) = some (.val (.word x))) :
    ∃ ws : List (BitVec 64), evs s es = some (ws.map fun w => .val (.word w)) ∧
      wordOpHOL o ws = some x := by
  simp only [ev, evs, evalHOLExact] at h ⊢
  split at h
  · rename_i vs hvs
    split at h
    · rename_i hall
      refine ⟨vs.map valueWord, ?_, ?_⟩
      · rw [hvs, ← all_word_eq vs hall]
      · obtain ⟨w, hw, hwx⟩ := Option.map_eq_some_iff.mp h
        simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hwx
        rw [hw, hwx]
    · simp at h
  · simp at h

theorem ev_panop_inv {s : PanSemStateFiniteExact 64 σ} {o : PanOp} {es : List (ExpHOL 64)}
    {x : BitVec 64} (h : ev s (.panop o es) = some (.val (.word x))) :
    ∃ ws : List (BitVec 64), evs s es = some (ws.map fun w => .val (.word w)) ∧
      panOpHOL o ws = some x := by
  simp only [ev, evs, evalHOLExact] at h ⊢
  split at h
  · rename_i vs hvs
    split at h
    · rename_i hall
      refine ⟨vs.map valueWord, ?_, ?_⟩
      · rw [hvs, ← all_word_eq vs hall]
      · obtain ⟨w, hw, hwx⟩ := Option.map_eq_some_iff.mp h
        simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hwx
        rw [hw, hwx]
    · simp at h
  · simp at h

/-- Inversion of `x + (32 + ld (y + 32) * 8)`: the child-slot address of the unwind. -/
theorem ev_slot_inv {s : PanSemStateFiniteExact 64 σ} {f t : MlS} {A : BitVec 64}
    (h : ev s (.op .add [lv f, cw 32, .panop .mul [.load .one (.op .add [lv t, cw 32]), cw 8]]) =
      some (.val (.word A))) :
    ∃ F I : BitVec 64, ev s (lv f) = some (.val (.word F)) ∧
      ev s (.load .one (.op .add [lv t, cw 32])) = some (.val (.word I)) ∧
      A = F + (BitVec.ofNat 64 32 + I * BitVec.ofNat 64 8) := by
  obtain ⟨ws, hws, hop⟩ := ev_op_inv h
  obtain ⟨v1, r1, e1, hv1, hr1⟩ := evs_cons_inv hws
  obtain ⟨v2, r2, e2, hv2, hr2⟩ := evs_cons_inv hr1
  obtain ⟨v3, r3, e3, hv3, hr3⟩ := evs_cons_inv hr2
  simp only [evs, evalListHOLExact, Option.some.injEq] at hr3
  subst hr3; subst e3; subst e2
  rcases ws with _ | ⟨F, _ | ⟨w2, _ | ⟨w3, _ | ⟨w4, ws⟩⟩⟩⟩ <;>
    simp only [List.map_cons, List.map_nil, List.cons.injEq, reduceCtorEq, false_and,
      and_false, and_true] at e1
  obtain ⟨rfl, rfl, rfl⟩ := e1
  rw [ev_cw] at hv2
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hv2
  subst hv2
  obtain ⟨ws', hws', hop'⟩ := ev_panop_inv hv3
  obtain ⟨u1, q1, g1, hu1, hq1⟩ := evs_cons_inv hws'
  obtain ⟨u2, q2, g2, hu2, hq2⟩ := evs_cons_inv hq1
  simp only [evs, evalListHOLExact, Option.some.injEq] at hq2
  subst hq2; subst g2
  rcases ws' with _ | ⟨I, _ | ⟨e8, _ | ⟨e9, ws'⟩⟩⟩ <;>
    simp only [List.map_cons, List.map_nil, List.cons.injEq, reduceCtorEq, false_and,
      and_false, and_true] at g1
  obtain ⟨rfl, rfl⟩ := g1
  rw [ev_cw] at hu2
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hu2
  subst hu2
  refine ⟨F, I, hv1, hu1, ?_⟩
  have hm : w3 = I * BitVec.ofNat 64 8 := by
    simp only [panOpHOL, Option.some.injEq] at hop'
    exact hop'.symm
  subst hm
  have e : wordOpHOL BinOp.add [F, BitVec.ofNat 64 32, I * BitVec.ofNat 64 8] =
      some (F + (BitVec.ofNat 64 32 + (I * BitVec.ofNat 64 8 + 0))) := rfl
  rw [e, Option.some.injEq] at hop
  rw [← hop]; simp

theorem word_of_valid {s : PanSemStateFiniteExact 64 σ} {x : MlS} {w : BitVec 64} {v : ValueHOL 64}
    (hx : s.locals.lookup x = some (.val (.word w)))
    (hv : isValidValueHOLExact s.toExact .local x v = true) : ∃ w', v = .val (.word w') := by
  simp only [isValidValueHOLExact, lookupKvarHOLExact] at hv
  split at hv
  · rename_i old hold
    have h2 : s.locals.lookup x = some old := hold
    rw [hx] at h2
    cases h2
    rw [shapeOf_val] at hv
    exact val_of_shapeEq_one' hv
  · simp at hv

theorem wl_congr {s t : PanSemStateFiniteExact 64 σ} {x : MlS}
    (h : t.locals.lookup x = s.locals.lookup x) : wl t x = wl s x := by
  unfold wl; rw [h]

/-- A call `res = f(fnode, …)` against a `BelowSP` hypothesis. -/
theorem unwind_call {f : MlS} {args : List (ExpHOL 64)}
    {Pre : List (ValueHOL 64) → PanSemStateFiniteExact 64 σ → Prop} (hf : BelowSP σ X f Pre)
    {SE : Nat} {M : MemSafe.Mem} {T : BitVec 64} {P : PanSemStateFiniteExact 64 σ → Prop}
    (hP : ∀ s, P s → UMid SE M T s)
    (hpre : ∀ s, P s → ∀ vs, evs s args = some vs → ∀ callee,
      Pre vs (callEntryStateHOLFinite s callee)) :
    Hoare σ X P (.call (some (some (.local, nm "res"), none)) f args)
      (fun r t => r = none ∧ UMid SE M T t) := by
  refine hoare_callA (k := .local) hf fun s _ hs vs hvs callee v st hR _ hval => ⟨rfl, ?_⟩
  obtain ⟨⟨p, hp, hord, hsp⟩, htop, ⟨R, hres⟩, hmem⟩ := hP s hs
  obtain ⟨p', hp', hord', hsp', hw⟩ := hR (by simp [Good]) p hp hord (hpre s hs vs hvs callee)
  obtain ⟨w', rfl⟩ := word_of_valid hres hval
  refine ⟨⟨p', ?_, hord', hsp'.trans hsp⟩, ?_, ⟨w', lookup_update_self _ _ _⟩, ?_⟩
  · rw [← hp']; rfl
  · show (({ st with locals := s.locals } : PanSemStateFiniteExact 64 σ).locals.update
      (nm "res", _)).lookup _ = _
    rw [lookup_update_ne _ _ (by decide)]; exact htop
  · intro a ha
    show st.memory a = M a
    by_contra hne
    have := hw a (fun e => hne (e.trans (hmem a ha)))
    omega

theorem unwind_step (hdef : BelowSP σ X (nm "_delete_ext_finish") (fun vs _ => arg0 vs + 56 ≤ heapEnd))
    (hcb : BelowSP σ X (nm "_collapse_branch") (fun vs _ => arg0 vs + 176 ≤ heapEnd))
    {SE S0 : Nat} {T : BitVec 64} :
    Hoare σ X (fun s => UInv SE S0 s ∧ s.locals.lookup (nm "top") = some (.val (.word T)) ∧ T ≠ 0)
      delUnwindBody
      (fun r t => r = none ∧ UInv SE S0 t ∧ (wl t (nm "top") = 0 ∨
        T.toNat + 40 ≤ (wl t (nm "top")).toNat)) := by
  unfold delUnwindBody
  refine hoare_dec fun s _ ⟨⟨hps, hS0, ⟨R0, hR0⟩, T', hT', hch⟩, hT, hT0⟩ vf hvf _ => ?_
  rw [hT] at hT'
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hT'
  subst hT'
  obtain ⟨h1, h2, ⟨hra, hrb⟩, hnext⟩ := chainOK_unfold hch hT0
  obtain ⟨p, hp, hord, hsp⟩ := hps
  set M := s.memory with hMdef
  -- `fnode` is the word at `T + 8`
  obtain ⟨w8, hw8, -, rfl⟩ := ev_load_one hvf
  rw [ev_add_cw hT 8] at hw8
  cases hw8
  set F := rd M (T + 8) with hF
  have hvF : s.memory (T + BitVec.ofNat 64 8) = .word F := mem_word _ _
  rw [hvF]
  let s1 := setVarHOLFinite (nm "fnode") (.val (.word F)) s
  have h1top : s1.locals.lookup (nm "top") = some (.val (.word T)) := by
    show (setVarHOLFinite _ _ s).locals.lookup _ = _
    rw [lk_set_ne _ _ (by decide)]; exact hT
  have h1f : s1.locals.lookup (nm "fnode") = some (.val (.word F)) := lk_set_self _ _ _
  have h1r : s1.locals.lookup (nm "res") = some (.val (.word R0)) := by
    show (setVarHOLFinite _ _ s).locals.lookup _ = _
    rw [lk_set_ne _ _ (by decide)]; exact hR0
  have hmid1 : UMid SE M T s1 := ⟨⟨p, hp, hord, hsp⟩, h1top, ⟨R0, h1r⟩, fun _ _ => rfl⟩
  -- the post, restored
  refine hoare_conseq (P := fun t => t = s1) (Q := fun r t => r = none ∧
      UInv SE S0 t ∧ (wl t (nm "top") = 0 ∨ T.toNat + 40 ≤ (wl t (nm "top")).toNat)) ?_
    (fun _ _ h => h) (fun r t _ _ h => ?_)
  rotate_left
  · obtain ⟨hr, hu, hm⟩ := h
    refine ⟨hr, ⟨hu.1, hu.2.1, ?_, ?_⟩, ?_⟩
    · obtain ⟨R2, hR2⟩ := hu.2.2.1
      refine ⟨R2, ?_⟩
      show (t.locals.resVarEq _).lookup _ = _
      rw [lookup_resVarEq_ne _ _ (by decide)]; exact hR2
    · obtain ⟨T2, hT2, hc⟩ := hu.2.2.2
      refine ⟨T2, ?_, hc⟩
      show (t.locals.resVarEq _).lookup _ = _
      rw [lookup_resVarEq_ne _ _ (by decide)]; exact hT2
    · rw [wl_congr (s := t) (show (t.locals.resVarEq _).lookup _ = _ from
        lookup_resVarEq_ne _ _ (by decide))]
      exact hm
  refine hoare_seq (R := fun r t => r = none ∧ UMid SE M T t) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_ite ?_ ?_
    · -- an extension record
      refine unwind_call hdef (fun t ⟨ht, _⟩ => by rw [ht]; exact hmid1) ?_
      intro t ⟨ht, w, hw, hw0⟩ vs hvs callee
      subst ht
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
      obtain ⟨wa, hwa, -, hxv⟩ := ev_load_one hx
      rw [ev_add_cw h1top 16] at hwa
      cases hwa
      rw [ev_cw] at hy
      cases hy
      have hk2 : rd M (T + 16) = 2 := by
        have := equal_true hxy
        simp only [ValueHOL.val.injEq] at hxv
        have e : M (T + 16) = .word x := hxv.symm
        unfold rd; rw [e]; exact this
      obtain ⟨v1, r1, rfl, hv1, -⟩ := evs_cons_inv hvs
      rw [ev_lv, h1f] at hv1
      cases hv1
      exact hra hk2
    · -- a branch record: the slot store, then `_collapse_branch`
      refine hoare_seq (R := fun r t => r = none ∧ UMid SE M T t ∧
          t.locals.lookup (nm "fnode") = some (.val (.word F)) ∧ F.toNat + 176 ≤ heapEnd) ?_
        (fun _ _ _ hr _ h => absurd h.1 hr) ?_
      · refine hoare_store fun t _ ⟨ht, hc⟩ A v mem hA hv hmem => ?_
        subst ht
        obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
        obtain ⟨wa, hwa, -, hxv⟩ := ev_load_one hx
        rw [ev_add_cw h1top 16] at hwa
        cases hwa
        rw [ev_cw] at hy
        cases hy
        have hk2 : rd M (T + 16) ≠ 2 := by
          have := equal_false hxy
          simp only [ValueHOL.val.injEq] at hxv
          have e : M (T + 16) = .word x := hxv.symm
          unfold rd; rw [e]; exact this
        obtain ⟨hF176, hI16⟩ := hrb hk2
        -- the address
        obtain ⟨F', I, hF', hI, rfl⟩ := ev_slot_inv hA
        rw [ev_lv, h1f] at hF'
        cases hF'
        obtain ⟨wq, hwq, -, hIv⟩ := ev_load_one hI
        rw [ev_add_cw h1top 32] at hwq
        cases hwq
        have hIe : I = rd M (T + 32) := by
          simp only [ValueHOL.val.injEq] at hIv
          have e : M (T + 32) = .word I := hIv.symm
          unfold rd; rw [e]
        subst hIe
        have hAlt : (F + (BitVec.ofNat 64 32 + rd M (T + 32) * BitVec.ofNat 64 8)).toNat < heapEnd := by
          have h1' := F.isLt
          have : (F + (BitVec.ofNat 64 32 + rd M (T + 32) * BitVec.ofNat 64 8)).toNat =
              F.toNat + 32 + (rd M (T + 32)).toNat * 8 := by
            simp only [heapEnd] at hF176
            bv_omega
          rw [this]; omega
        rw [ev_lv, h1r] at hv
        cases hv
        simp only [flattenHOL] at hmem
        obtain ⟨-, rfl⟩ := stores_one hmem
        refine ⟨rfl, ⟨⟨p, hp, hord, hsp⟩, h1top, ⟨R0, h1r⟩, fun a ha => ?_⟩, h1f, hF176⟩
        show (if a = _ then _ else s1.memory a) = M a
        have hle := heapEnd_le_sp hord
        rw [if_neg (by rintro rfl; omega)]
        rfl
      · exact hoare_pre (unwind_call hcb (fun t h => h.2.1) fun t ⟨_, _, hf, h176⟩ vs hvs callee => by
          obtain ⟨v1, r1, rfl, hv1, -⟩ := evs_cons_inv hvs
          rw [ev_lv, hf] at hv1
          cases hv1
          exact h176) (fun _ _ h => h)
  · -- `top = ld top`
    refine hoare_assign fun t _ ⟨_, ⟨p', hp', hord', hsp'⟩, htop, ⟨R2, hR2⟩, hmem⟩ v hv _ =>
      ⟨rfl, ?_⟩
    obtain ⟨w0, hw0, -, rfl⟩ := ev_load_one hv
    rw [ev_add_cw htop 0] at hw0
    cases hw0
    have hT0' : T + BitVec.ofNat 64 0 = T := by simp
    rw [hT0']
    have hMT : t.memory T = .word (rd M T) := by rw [hmem T (by omega)]; exact mem_word _ _
    rw [hMT]
    have hS0' : S0 ≤ 2 ^ 64 := by simp only [scratchEnd] at hS0; omega
    have hch' : ChainOK t.memory (T.toNat + 40) S0 (rd M T) :=
      chainOK_frame hS0' _ _ _ rfl (fun a ha1 _ => hmem a (by omega)) hnext
    refine ⟨⟨⟨p', ?_, hord', hsp'⟩, hS0, ⟨R2, by rw [lk_set_ne _ _ (by decide)]; exact hR2⟩, rd M T,
      lk_set_self _ _ _, chainOK_mono (by omega) hch'⟩, ?_⟩
    · rw [← hp']; rfl
    · have hwl : wl (setVarHOLFinite (nm "top") (.val (.word (rd M T))) t) (nm "top") = rd M T :=
        wl_of (lk_set_self _ _ _)
      rw [hwl]
      by_cases h0 : rd M T = 0
      · exact Or.inl h0
      · exact Or.inr (chainOK_unfold hch' h0).1

/-! ## The unwind loop bound -/

theorem delUnwindBody_cost {Bdef Bcb : Nat} (hdef : CalleeCost σ X (nm "_delete_ext_finish") Bdef)
    (hcb : CalleeCost σ X (nm "_collapse_branch") Bcb) :
    Cost σ X delUnwindBody (Bdef + Bcb + 2) := by
  have nh : ∀ {r : Option (VarKind × MlS)}, ∀ r' hid hv (hp : ProgHOL 64),
      (some (r, none) : Option (Option (VarKind × MlS) × Option (MlS × MlS × ProgHOL 64))) =
        some (r', some (hid, hv, hp)) → Cost σ X hp 0 := by
    intro _ _ _ _ _ h; cases h
  have hc : Cost σ X delUnwindBody (max (1 + Bdef + 0) (0 + (1 + Bcb + 0)) + 0) := by
    unfold delUnwindBody
    exact cost_dec (cost_seq (cost_ite (cost_call (Bh := 0) hdef nh)
      (cost_seq (cost_store _ _) (cost_call (Bh := 0) hcb nh))) (cost_assign _ _ _))
  exact hc.mono (by omega)

theorem top_of_cond {s : PanSemStateFiniteExact 64 σ} (hc : CondTrue s delUnwindCond) :
    ∃ T : BitVec 64, s.locals.lookup (nm "top") = some (.val (.word T)) ∧ T ≠ 0 := by
  obtain ⟨w, hw, hw0⟩ := hc
  obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
  rw [ev_cw] at hy
  cases hy
  exact ⟨x, hx, notEqual_true hxy⟩

/-- **The unwind loop** from `UInv SE S0`: at most `scratchEnd + 1` iterations. -/
theorem delUnwind_costP
    (hdef' : BelowSP σ X (nm "_delete_ext_finish") (fun vs _ => arg0 vs + 56 ≤ heapEnd))
    (hcb' : BelowSP σ X (nm "_collapse_branch") (fun vs _ => arg0 vs + 176 ≤ heapEnd))
    {Bdef Bcb : Nat} (hdef : CalleeCost σ X (nm "_delete_ext_finish") Bdef)
    (hcb : CalleeCost σ X (nm "_collapse_branch") Bcb) {SE S0 : Nat} :
    Inv.CostP σ X (UInv SE S0) (.while delUnwindCond delUnwindBody)
      ((scratchEnd + 1) * (Bdef + Bcb + 2 + 1)) := by
  refine Inv.costP_while (uMu S0) scratchEnd (fun _ h => h) (fun _ => rfl)
    (Inv.costP_of_cost (delUnwindBody_cost hdef hcb)) ?_ ?_ ?_
  · intro s hs ⟨hI, hc⟩ ht
    obtain ⟨T, hT, hT0⟩ := top_of_cond hc
    obtain ⟨hr, hu, -⟩ := unwind_step hdef' hcb' s hs ⟨hI, hT, hT0⟩ ht
    intro _; exact hu
  · intro s _ hI _
    unfold uMu
    have := hI.2.1
    split <;> omega
  · intro k s hs ⟨hI, hc, hk⟩ ht
    obtain ⟨T, hT, hT0⟩ := top_of_cond hc
    obtain ⟨hr, hu, hm⟩ := unwind_step hdef' hcb' s hs ⟨hI, hT, hT0⟩ ht
    intro _
    obtain ⟨T', hT', hch⟩ := hI.2.2.2
    rw [hT] at hT'
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hT'
    subst hT'
    obtain ⟨h1, h2, -, -⟩ := chainOK_unfold hch hT0
    rw [← hk]
    unfold uMu
    rw [wl_of hT, if_neg hT0]
    rcases hm with h0 | hup
    · rw [if_pos h0]; omega
    · split
      · omega
      · obtain ⟨T2, hT2, hch2⟩ := hu.2.2.2
        rw [wl_of hT2] at hup ⊢
        by_cases hz : T2 = 0
        · subst hz; simp at hup
        · obtain ⟨-, h2', -, -⟩ := chainOK_unfold hch2 hz
          omega

end InitECandidate.Solver.Spec.Mpt
