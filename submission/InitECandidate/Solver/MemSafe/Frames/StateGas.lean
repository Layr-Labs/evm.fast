import InitECandidate.Solver.MemSafe.Frames.StateGasCode

/-!
# `credit_state_gas_refund`, `charge_state_gas`: exact effects
-/

set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- The memory after `credit_state_gas_refund(a)` on the frame `e`. -/
def creditMem (m : Mem) (e a : BitVec 64) : Mem :=
  upd (upd (upd m (e + BitVec.ofNat 64 64) (fld m e 64 + minF a (fld m e 192)))
      (e + BitVec.ofNat 64 192) (fld m e 192 - minF a (fld m e 192)))
    (e + BitVec.ofNat 64 72)
    (fld (upd (upd m (e + BitVec.ofNat 64 64) (fld m e 64 + minF a (fld m e 192)))
      (e + BitVec.ofNat 64 192) (fld m e 192 - minF a (fld m e 192))) e 72 +
      (a - minF a (fld m e 192)))

theorem credit_spec (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "credit_state_gas_refund") (fun vs s r t => Good (some r) →
      ∃ e a, vs = [.val (.word a)] ∧ gword s nmEv = some e ∧ r = .returned (.val (.word 0)) ∧
        t.globals = s.globals ∧ t.memory = creditMem s.memory e a) := by
  refine funSpec_of_hoareG fun vs body callee rs hl s0 _ hloc => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, hsh, hA⟩ := lookupCode_one code_credit hl
  obtain ⟨a, rfl⟩ := val_of_shapeEq_one hsh
  have ha : s0.locals.lookup (nm "amount") = some (.val (.word a)) := by rw [hloc]; exact hA
  refine hoareG_dec fun s1 _ hs1 v1 hv1 _ => ?_
  subst hs1
  obtain ⟨e, he⟩ : ∃ e, gword s1 nmEv = some e := by
    obtain ⟨w, hw, -, -⟩ := ev_load_one hv1
    obtain ⟨y, z, hy, -, -⟩ := ev_add2_inv hw
    exact ⟨y, gword_of hy⟩
  obtain ⟨rfl, -⟩ := ev_gLoad_eq he hv1
  set S := fld s1.memory e 192 with hS
  set l1 := (setVarHOLFinite (nm "spilled") (.val (.word S)) s1).locals with hl1
  have ha1 : l1.lookup (nm "amount") = some (.val (.word a)) := by
    rw [hl1, lk_set_ne _ _ (by decide)]; exact ha
  have hs1 : l1.lookup (nm "spilled") = some (.val (.word S)) := by rw [hl1, lk_set_self]
  refine hoareG_decCall (min_spec hC) ?_ ?_
  · intro s _ hs vs hvs callee v st hR _ _
    subst hs
    have hev : evs (setVarHOLFinite (nm "spilled") (.val (.word S)) s1)
        [lv (nm "amount"), lv (nm "spilled")] = some [.val (.word a), .val (.word S)] :=
      evs_cons (lv_of rfl ha1) (evs_cons (lv_of rfl hs1) evs_nil)
    rw [hev] at hvs
    cases hvs
    obtain ⟨a', b', hab, hr, hm, hg⟩ := hR (by simp [Good])
    simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hab
    obtain ⟨rfl, rfl⟩ := hab
    simp only [PanSemResultExact.returned.injEq] at hr
    subst hr
    set f := minF a S with hf
    set l2 := (setVarHOLFinite (nm "from_gl") (.val (.word f))
      { st with locals := (setVarHOLFinite (nm "spilled") (.val (.word S)) s1).locals }).locals
      with hl2
    have ha2 : l2.lookup (nm "amount") = some (.val (.word a)) := by
      rw [hl2, lk_set_ne _ _ (by decide)]; exact ha1
    have hs2 : l2.lookup (nm "spilled") = some (.val (.word S)) := by
      rw [hl2, lk_set_ne _ _ (by decide)]; exact hs1
    have hf2 : l2.lookup (nm "from_gl") = some (.val (.word f)) := by rw [hl2, lk_set_self]
    have hg2 : (setVarHOLFinite (nm "from_gl") (.val (.word f))
        { st with locals := (setVarHOLFinite (nm "spilled") (.val (.word S)) s1).locals }).globals =
        s1.globals := hg
    have hm2 : (setVarHOLFinite (nm "from_gl") (.val (.word f))
        { st with locals := (setVarHOLFinite (nm "spilled") (.val (.word S)) s1).locals }).memory =
        s1.memory := hm
    let m1 := upd s1.memory (e + BitVec.ofNat 64 64) (fld s1.memory e 64 + f)
    let m2 := upd m1 (e + BitVec.ofNat 64 192) (S - f)
    refine hoareG_seq (R := fun r u => r = none ∧ u.locals = l2 ∧ u.globals = s1.globals ∧
        u.memory = m1) ?_ (fun r t _ hr _ h => absurd h.1 hr) ?_
    · refine hoareG_stG fun u _ hu G v hG hv => ?_
      subst hu
      rw [gword_eqG hg2, he, Option.some.injEq] at hG
      subst hG
      obtain ⟨y, z, hy, hz, rfl⟩ := ev_op_add_inv hv
      obtain ⟨hy', -⟩ := ev_gLoad_eq (by rw [gword_eqG hg2]; exact he) hy
      rw [lv_of rfl hf2] at hz
      cases hz
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hy'
      subst hy'
      refine ⟨_, rfl, fun _ => ⟨rfl, rfl, hg2, ?_⟩⟩
      show upd _ _ _ = _
      rw [hm2]
    refine hoareG_seq (R := fun r u => r = none ∧ u.locals = l2 ∧ u.globals = s1.globals ∧
        u.memory = m2) ?_ (fun r t _ hr _ h => absurd h.1 hr) ?_
    · refine hoareG_stG fun u _ ⟨_, hl, hg, hm⟩ G v hG hv => ?_
      rw [gword_eqG hg, he, Option.some.injEq] at hG
      subst hG
      obtain ⟨y, z, hy, hz, rfl⟩ := ev_op_sub_inv hv
      rw [lv_of hl hs2] at hy; rw [lv_of hl hf2] at hz
      cases hy; cases hz
      refine ⟨_, rfl, fun _ => ⟨rfl, hl, hg, ?_⟩⟩
      show upd _ _ _ = _
      rw [hm]
    refine hoareG_seq (R := fun r u => r = none ∧ u.globals = s1.globals ∧
        u.memory = creditMem s1.memory e a) ?_ (fun r t _ hr _ h => absurd h.1 hr) ?_
    · refine hoareG_stG fun u _ ⟨_, hl, hg, hm⟩ G v hG hv => ?_
      rw [gword_eqG hg, he, Option.some.injEq] at hG
      subst hG
      obtain ⟨y, z, hy, hz, rfl⟩ := ev_op_add_inv hv
      obtain ⟨hy', -⟩ := ev_gLoad_eq (by rw [gword_eqG hg]; exact he) hy
      obtain ⟨y2, z2, hy2, hz2, hzv⟩ := ev_op_sub_inv hz
      rw [lv_of hl ha2] at hy2; rw [lv_of hl hf2] at hz2
      cases hy2; cases hz2
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hy' hzv
      subst hy' hzv
      refine ⟨_, rfl, fun _ => ⟨rfl, hg, ?_⟩⟩
      show upd _ _ _ = _
      rw [hm]
      rfl
    refine hoareG_return fun u _ ⟨_, hg, hm⟩ v hv => ?_
    rw [ev_cw] at hv; cases hv
    intro rr hrr
    cases hrr
    exact ⟨e, a, rfl, he, rfl, hg, hm⟩
  · intro s _ _ vs _ callee r st hR _ habn
    obtain ⟨_, _, _, hr, _⟩ := hR (good_of_abn habn)
    subst hr
    rcases habn with ⟨_, _, h⟩ | ⟨_, h⟩ <;> cases h

/-! ## `charge_state_gas` -/

/-- The memory after the spilling branch of `charge_state_gas(a)`. -/
def csgMem (m : Mem) (e a : BitVec 64) : Mem :=
  upd (upd (upd m (e + BitVec.ofNat 64 72) 0) (e + BitVec.ofNat 64 64)
      (fld m e 64 - (a - fld m e 72)))
    (e + BitVec.ofNat 64 192)
    (fld (upd (upd m (e + BitVec.ofNat 64 72) 0) (e + BitVec.ofNat 64 64)
      (fld m e 64 - (a - fld m e 72))) e 192 + (a - fld m e 72))

/-- The three outcomes of `charge_state_gas(a)`. -/
def CsgCase (m : Mem) (e a : BitVec 64) (r : PanSemResultExact 64) (m' : Mem) : Prop :=
  (a ≤ fld m e 72 ∧ r = .returned (.val (.word 0)) ∧
      m' = upd m (e + BitVec.ofNat 64 72) (fld m e 72 - a)) ∨
  (fld m e 72 < a ∧ a ≤ addSatF (fld m e 72) (fld m e 64) ∧ r = .returned (.val (.word 0)) ∧
      m' = csgMem m e a) ∨
  (fld m e 72 < a ∧ addSatF (fld m e 72) (fld m e 64) < a ∧
      r = .exception nmEvmErr (.val (.word 4)) ∧ m' = m)

theorem notLower_iff {x y : BitVec 64} :
    Flapjack.Compiler.Encoders.Asm.wordCmpHOL .notLower x y = true ↔ y ≤ x := by
  simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL]

theorem csg_spec (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "charge_state_gas") (fun vs s r t => Good (some r) →
      ∃ e a, vs = [.val (.word a)] ∧ gword s nmEv = some e ∧ t.globals = s.globals ∧
        CsgCase s.memory e a r t.memory) := by
  refine funSpec_of_hoareG fun vs body callee rs hl s0 _ hloc => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, hsh, hA⟩ := lookupCode_one code_csg hl
  obtain ⟨a, rfl⟩ := val_of_shapeEq_one hsh
  have ha : s0.locals.lookup (nm "amount") = some (.val (.word a)) := by rw [hloc]; exact hA
  refine hoareG_dec fun s1 _ hs1 v1 hv1 _ => ?_
  subst hs1
  obtain ⟨e, he⟩ : ∃ e, gword s1 nmEv = some e := by
    obtain ⟨w, hw, -, -⟩ := ev_load_one hv1
    obtain ⟨y, z, hy, -, -⟩ := ev_add2_inv hw
    exact ⟨y, gword_of hy⟩
  obtain ⟨rfl, -⟩ := ev_gLoad_eq he hv1
  set SGL := fld s1.memory e 72 with hSGL
  refine hoareG_dec fun s2 _ hs2 v2 hv2 _ => ?_
  subst hs2
  obtain ⟨rfl, -⟩ := ev_gLoad_eq (by rw [gword_setVar]; exact he) hv2
  set GL := fld s1.memory e 64 with hGL
  set u2 := setVarHOLFinite (nm "gl") (.val (.word (fld (setVarHOLFinite (nm "sgl")
    (.val (.word SGL)) s1).memory e 64))) (setVarHOLFinite (nm "sgl") (.val (.word SGL)) s1)
    with hu2
  have hsg2 : u2.locals.lookup (nm "sgl") = some (.val (.word SGL)) := by
    rw [hu2, lk_set_ne _ _ (by decide), lk_set_self]
  have hgl2 : u2.locals.lookup (nm "gl") = some (.val (.word GL)) := by rw [hu2, lk_set_self]; rfl
  have ha2 : u2.locals.lookup (nm "amount") = some (.val (.word a)) := by
    rw [hu2, lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact ha
  have hg2 : u2.globals = s1.globals := rfl
  have hm2 : u2.memory = s1.memory := rfl
  refine hoareG_seq (R := fun r u => (r = some (.returned (.val (.word 0))) ∧ a ≤ SGL ∧
        u.globals = s1.globals ∧ u.memory = upd s1.memory (e + BitVec.ofNat 64 72) (SGL - a)) ∨
      (r = none ∧ SGL < a ∧ u = u2)) ?_ ?_ ?_
  · refine hoareG_ite ?_ ?_
    · refine hoareG_pre (hoareG_pure (P0 := a ≤ SGL) (P := fun u => u = u2) fun hle => ?_)
        (fun u _ ⟨hu, w, hw, hw0⟩ => ⟨?_, hu⟩)
      · refine hoareG_seq (R := fun r u => r = none ∧
            u = { u2 with memory := upd s1.memory (e + BitVec.ofNat 64 72) (SGL - a) })
          ?_ (fun r t _ hr _ h => absurd h.1 hr) ?_
        · refine hoareG_stG fun u _ hu G v hG hv => ?_
          subst hu
          rw [gword_eqG hg2, he, Option.some.injEq] at hG
          subst hG
          obtain ⟨y, z, hy, hz, hv'⟩ := ev_op_sub_inv hv
          rw [lv_of rfl hsg2] at hy; rw [lv_of rfl ha2] at hz
          cases hy; cases hz
          exact ⟨_, hv', fun _ => ⟨rfl, rfl⟩⟩
        · refine hoareG_return fun u _ ⟨_, hu⟩ v hv => ?_
          subst hu
          exact Or.inl ⟨by rw [ev_cw] at hv; cases hv; rfl, hle, rfl, rfl⟩
      · subst hu
        obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
        rw [lv_of rfl hsg2] at hx; rw [lv_of rfl ha2] at hy
        cases hx; cases hy
        exact notLower_iff.mp hxy
    · refine hoareG_skip fun u _ ⟨hu, hw⟩ => ?_
      subst hu
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hw
      rw [lv_of rfl hsg2] at hx; rw [lv_of rfl ha2] at hy
      cases hx; cases hy
      refine Or.inr ⟨rfl, ?_, rfl⟩
      by_contra hc
      rw [notLower_iff.mpr (by simpa using hc)] at hxy
      cases hxy
  · intro r t _ hr _ h
    rcases h with ⟨rfl, hle, hg, hm⟩ | ⟨h0, -⟩
    · intro rr hrr
      cases hrr
      exact ⟨e, a, rfl, he, hg, Or.inl ⟨hle, rfl, hm⟩⟩
    · exact absurd h0 hr
  refine hoareG_pre (hoareG_pure (P0 := SGL < a) (P := fun u => u = u2) fun hlt => ?_) ?_
  rotate_left
  · rintro u - (⟨h0, -⟩ | ⟨-, hlt, hu⟩)
    · cases h0
    · exact ⟨hlt, hu⟩
  refine hoareG_decCall (addSat_spec hC) ?_ ?_
  · intro s _ hs vs hvs callee v st hR _ _
    subst hs
    have hev : evs u2 [lv (nm "sgl"), lv (nm "gl")] = some [.val (.word SGL), .val (.word GL)] :=
      evs_cons (lv_of rfl hsg2) (evs_cons (lv_of rfl hgl2) evs_nil)
    rw [hev] at hvs
    cases hvs
    obtain ⟨a', b', hab, hr, hm, hg⟩ := hR (by simp [Good])
    simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hab
    obtain ⟨rfl, rfl⟩ := hab
    simp only [PanSemResultExact.returned.injEq] at hr
    subst hr
    set T := addSatF SGL GL with hT
    set l3 := (setVarHOLFinite (nm "tot") (.val (.word T)) { st with locals := u2.locals }).locals
      with hl3
    have ht3 : l3.lookup (nm "tot") = some (.val (.word T)) := by rw [hl3, lk_set_self]
    have ha3 : l3.lookup (nm "amount") = some (.val (.word a)) := by
      rw [hl3, lk_set_ne _ _ (by decide)]; exact ha2
    have hsg3 : l3.lookup (nm "sgl") = some (.val (.word SGL)) := by
      rw [hl3, lk_set_ne _ _ (by decide)]; exact hsg2
    have hgl3 : l3.lookup (nm "gl") = some (.val (.word GL)) := by
      rw [hl3, lk_set_ne _ _ (by decide)]; exact hgl2
    refine hoareG_seq (R := fun r u => (r = some (.returned (.val (.word 0))) ∧ a ≤ T ∧
          u.globals = s1.globals ∧ u.memory = csgMem s1.memory e a) ∨
        (r = none ∧ T < a ∧ u.globals = s1.globals ∧ u.memory = s1.memory)) ?_ ?_ ?_
    · refine hoareG_ite ?_ ?_
      · refine hoareG_dec fun u _ ⟨hu, w, hw, hw0⟩ vr hvr _ => ?_
        subst hu
        have hle : a ≤ T := by
          obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
          rw [lv_of rfl ht3] at hx; rw [lv_of rfl ha3] at hy
          cases hx; cases hy
          exact notLower_iff.mp hxy
        obtain ⟨y, z, hy, hz, hvr'⟩ := ev_op_sub_inv hvr
        rw [lv_of rfl ha3] at hy; rw [lv_of rfl hsg3] at hz
        cases hy; cases hz
        subst hvr'
        set l4 := (setVarHOLFinite (nm "rem") (.val (.word (a - SGL)))
          (setVarHOLFinite (nm "tot") (.val (.word T)) { st with locals := u2.locals })).locals
        have hr4 : l4.lookup (nm "rem") = some (.val (.word (a - SGL))) := lk_set_self _ _ _
        have hgl4 : l4.lookup (nm "gl") = some (.val (.word GL)) := by
          show (setVarHOLFinite _ _ _).locals.lookup _ = _
          rw [lk_set_ne _ _ (by decide)]; exact hgl3
        have hg4 : (setVarHOLFinite (nm "rem") (.val (.word (a - SGL)))
            (setVarHOLFinite (nm "tot") (.val (.word T)) { st with locals := u2.locals })).globals =
            s1.globals := hg
        have hm4 : (setVarHOLFinite (nm "rem") (.val (.word (a - SGL)))
            (setVarHOLFinite (nm "tot") (.val (.word T)) { st with locals := u2.locals })).memory =
            s1.memory := hm
        refine hoareG_seq (R := fun r u => r = none ∧ u.locals = l4 ∧ u.globals = s1.globals ∧
            u.memory = upd s1.memory (e + BitVec.ofNat 64 72) 0)
          ?_ (fun r t _ hr _ h => absurd h.1 hr) ?_
        · refine hoareG_stG fun u _ hu G v hG hv => ?_
          subst hu
          rw [gword_eqG hg4, he, Option.some.injEq] at hG
          subst hG
          rw [ev_cw] at hv; cases hv
          refine ⟨_, rfl, fun _ => ⟨rfl, rfl, hg4, ?_⟩⟩
          show upd _ _ _ = _
          rw [hm4]; rfl
        refine hoareG_seq (R := fun r u => r = none ∧ u.locals = l4 ∧ u.globals = s1.globals ∧
            u.memory = upd (upd s1.memory (e + BitVec.ofNat 64 72) 0) (e + BitVec.ofNat 64 64)
              (GL - (a - SGL)))
          ?_ (fun r t _ hr _ h => absurd h.1 hr) ?_
        · refine hoareG_stG fun u _ ⟨_, hl, hg, hm⟩ G v hG hv => ?_
          rw [gword_eqG hg, he, Option.some.injEq] at hG
          subst hG
          obtain ⟨y, z, hy, hz, hv'⟩ := ev_op_sub_inv hv
          rw [lv_of hl hgl4] at hy; rw [lv_of hl hr4] at hz
          cases hy; cases hz
          refine ⟨_, hv', fun _ => ⟨rfl, hl, hg, ?_⟩⟩
          show upd _ _ _ = _
          rw [hm]
        refine hoareG_seq (R := fun r u => r = none ∧ u.globals = s1.globals ∧
            u.memory = csgMem s1.memory e a) ?_ (fun r t _ hr _ h => absurd h.1 hr) ?_
        · refine hoareG_stG fun u _ ⟨_, hl, hg, hm⟩ G v hG hv => ?_
          rw [gword_eqG hg, he, Option.some.injEq] at hG
          subst hG
          obtain ⟨y, z, hy, hz, hv'⟩ := ev_op_add_inv hv
          obtain ⟨hy', -⟩ := ev_gLoad_eq (by rw [gword_eqG hg]; exact he) hy
          rw [lv_of hl hr4] at hz
          cases hz
          simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hy'
          subst hy'
          refine ⟨_, hv', fun _ => ⟨rfl, hg, ?_⟩⟩
          show upd _ _ _ = _
          rw [hm]
          rfl
        refine hoareG_return fun u _ ⟨_, hg, hm⟩ v hv => ?_
        rw [ev_cw] at hv; cases hv
        exact Or.inl ⟨rfl, hle, hg, hm⟩
      · refine hoareG_skip fun u _ ⟨hu, hw⟩ => ?_
        subst hu
        obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hw
        rw [lv_of rfl ht3] at hx; rw [lv_of rfl ha3] at hy
        cases hx; cases hy
        refine Or.inr ⟨rfl, ?_, hg, hm⟩
        by_contra hc
        rw [notLower_iff.mpr (by simpa using hc)] at hxy
        cases hxy
    · intro r t _ hr _ h
      rcases h with ⟨rfl, hle, hg, hm⟩ | ⟨h0, -⟩
      · intro rr hrr
        cases hrr
        exact ⟨e, a, rfl, he, hg, Or.inr (Or.inl ⟨hlt, hle, rfl, hm⟩)⟩
      · exact absurd h0 hr
    · refine hoareG_seq (R := fun r u => r = some (.exception nmEvmErr (.val (.word 4))) ∧
          T < a ∧ u.globals = s1.globals ∧ u.memory = s1.memory) ?_ ?_ ?_
      · refine hoareG_raise fun u _ h v hv => ?_
        rcases h with ⟨h0, -⟩ | ⟨-, hTa, hg, hm⟩
        · cases h0
        · rw [ev_cw] at hv; cases hv
          exact ⟨rfl, hTa, hg, hm⟩
      · intro r t _ _ _ ⟨hr, hTa, hg, hm⟩ rr hrr
        rw [hr, Option.some.injEq] at hrr
        subst hrr
        exact ⟨e, a, rfl, he, hg, Or.inr (Or.inr ⟨hlt, hTa, rfl, hm⟩)⟩
      · exact hoareG_false fun u _ ⟨h, _⟩ => by cases h
  · intro s _ _ vs _ callee r st hR _ habn
    obtain ⟨_, _, _, hr, _⟩ := hR (good_of_abn habn)
    subst hr
    rcases habn with ⟨_, _, h⟩ | ⟨_, h⟩ <;> cases h

end InitECandidate.Solver.MemSafe.Frames
