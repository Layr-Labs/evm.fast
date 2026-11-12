import InitECandidate.Solver.MemSafe.Sc.GcEnv

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

/-!
# `get_code`'s value fact (the structural proof)

The fold checker proves everything but the three returns, whose second word is bounded by hand
(`WR`): `<0, 0>`; `<lds w.1, lds (w.1 + 8)>` for a found `w` (`w.1` fits `ptr tCSL`: `csl_len`);
`ws_get_code`'s result (`funSpec_ws_get_code`).
-/

namespace InitECandidate.Solver.MemSafe.Sc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type}

/-- After `w = htab_get(..)`: `w = <a, b>` and a found `b` fits `ptr tCSL`. -/
def ExW (Γ : Gam) (t : State σ) : Prop :=
  ∃ a b : BitVec 64, t.locals.lookup (nm "w") = some (wv [a, b]) ∧
    (a ≠ 0 → Fits Γ (.ptr Types.tCSL) b)

/-- After `c = ws_get_code(..)`: `c = <x, y>` with `y < 2^32`. -/
def ExC (_ : Gam) (t : State σ) : Prop :=
  ∃ x y : BitVec 64, t.locals.lookup (nm "c") = some (wv [x, y]) ∧ y.toNat ≤ 2 ^ 32

/-- The record invariant bounds the length of a `tCSL` object. -/
theorem csl_len {C : Cfg} {Γ : Gam} {t : State σ} {H : Hooks σ} (hH : H = Hooks.guestHooksR)
    (hG : G C H Γ t) {b : BitVec 64} (hf : Fits Γ (.ptr Types.tCSL) b) :
    (rd t.memory (b + BitVec.ofNat 64 8)).toNat ≤ 2 ^ 32 := by
  subst hH
  obtain ⟨o, ho, hb, ht⟩ := hf
  obtain ⟨p, hp, hord, hL, hF, hT, hGl, hW⟩ := hG
  obtain ⟨-, -, hcsl⟩ := (hW o ho).2 Hooks.cslD Hooks.cslD_mem (by rw [ht]; rfl)
  obtain ⟨-, -, hlen⟩ := hcsl
  have e : o.cell 1 = b + BitVec.ofNat 64 8 := by rw [Obj.cell, hb]
  rw [e] at hlen
  exact hlen

/-- The context of the `get_code` proof. -/
structure GcH (a : Act σ) : Prop where
  ha : ActOK a guestCtx
  hE : gcE.C = a.C
  hT : CTabSound σ guestCtx a.Cb a.H gcE.tab
  hsg : gcE.sg = a.sg
  hcE : gcE.caps = a.caps
  hWS : WinSpecs σ guestCtx
  hH : a.H = Hooks.guestHooksR (σ := σ)
  hCb : a.Cb = Types.guestC

section sound
variable {a : Act σ}

/-- A `return` whose value is bounded by hand and whose heap part is the checker's. -/
theorem retW (h : GcH a) {e : ExpHOL 64} {A : AEnv} (hchk : chk gcE A (.return e) = some Ond)
    (Γ : Gam) (Θ : List (BitVec 64 × Nat)) (P : State σ → Prop)
    (hP : ∀ s, P s → IG a A Γ Θ s)
    (hval : ∀ s : State σ, InCtx s guestCtx → P s → ∀ v, ev s e = some v → ValP (.returned v)) :
    HoareG σ guestCtx P (.return e) (fun r t => SPost a gcE.sg.ret Ond Γ Θ r t ∧ WR r) :=
  hoareG_and' (hoareG_pre (chk_sound h.ha h.hE h.hT h.hsg h.hcE h.hWS (.return e) A Ond hchk Γ Θ)
    (fun s _ hs => hP s hs))
    (hoareG_return fun s hs hp v hv rr hrr => by cases hrr; exact hval s hs hp v hv)

theorem ValP_ret00 {s : State σ} {v : ValueHOL 64}
    (hv : ev s (.rstruct [cw 0, cw 0]) = some v) : ValP (.returned v) := by
  rw [ev_rstruct (evs_cons (ev_cw s 0) (evs_cons (ev_cw s 0) evs_nil))] at hv
  cases hv
  intro v'' hv'' x y hxy
  cases hv''
  simp only [wv, List.map, ValueHOL.rStruct.injEq, List.cons.injEq, ValueHOL.val.injEq,
    HolWordLab.word.injEq, and_true] at hxy
  obtain ⟨-, rfl⟩ := hxy
  decide

theorem ite1_sound (h : GcH a) (Γ : Gam) (Θ : List (BitVec 64 × Nat)) :
    HoareG σ guestCtx (fun s => IG a Bm Γ Θ s ∧ True) gcIte1
      (fun r t => SPost a gcE.sg.ret (Ogite2 Bm) Γ Θ r t ∧ WR r) := by
  unfold gcIte1
  refine hoareG_ite ?_ ?_
  · exact hoareG_conseq (retW h chk_gret00 Γ Θ (fun s => IG a Bm Γ Θ s ∧ True ∧ True)
      (fun s hs => hs.1) (fun s _ _ v hv => ValP_ret00 hv))
      (fun s _ hs => ⟨hs.1.1, hs.1.2, trivial⟩) (fun r t _ _ H => ⟨spost_join_left H.1, H.2⟩)
  · exact hoareG_skip fun s _ hs => ⟨⟨Bm, Γ, Θ, og_nrm Bm, later_refl Γ Θ, hs.1.1⟩, wr_none⟩


/-- The value of `<lds w.1, lds (w.1 + 8)>` for a found `w` whose `w.1` fits `ptr tCSL`. -/
theorem ValP_gcret (h : GcH a) {A : AEnv} {Γ : Gam} {Θ : List (BitVec 64 × Nat)} {s : State σ}
    (hig : IG a A Γ Θ s) (hEx : ExW Γ s)
    (hc : ∃ w, ev s (.cmp .notEqual (.rfield 0 (lv (nm "w"))) (cw 0)) = some (.val (.word w)) ∧
      w ≠ 0) {v : ValueHOL 64}
    (hv : ev s (.rstruct [.load .one (.rfield 1 (lv (nm "w"))),
      .load .one (.op .add [.rfield 1 (lv (nm "w")), cw 8])]) = some v) : ValP (.returned v) := by
  obtain ⟨a', b', hlw, hfit⟩ := hEx
  have hr : ev s (lv (nm "w")) = some (wv [a', b']) := by rw [ev_lv]; exact hlw
  have e0 : ev s (.rfield 0 (lv (nm "w"))) = some (.val (.word a')) :=
    ev_rfield_wv hr (i := 0) (by simp)
  have e1 : ev s (.rfield 1 (lv (nm "w"))) = some (.val (.word b')) :=
    ev_rfield_wv hr (i := 1) (by simp)
  have ha0 : a' ≠ 0 := by
    have := Rec.cmp_true' e0 (ev_cw s 0) hc
    exact notEqual_true this
  have hfit' := hfit ha0
  obtain ⟨p, hh, -, -⟩ := hig
  have hlen := csl_len h.hH hh.1 hfit'
  obtain ⟨vs, rfl, hvs⟩ := ev_rstruct_inv hv
  obtain ⟨u1, vs1, rfl, h1, h2⟩ := evs_cons_inv hvs
  obtain ⟨u2, vs2, rfl, h2', h3⟩ := evs_cons_inv h2
  rw [evs_nil] at h3
  cases h3
  obtain ⟨w', hw', -, rfl⟩ := Struct.ev_load1_inv h2'
  obtain ⟨y, z, hy, hz, rfl⟩ := ev_add2_inv hw'
  rw [e1] at hy
  rw [ev_cw] at hz
  cases hy
  cases hz
  obtain ⟨w1, hw1, -, rfl⟩ := Struct.ev_load1_inv h1
  intro v'' hv'' x y hxy
  cases hv''
  simp only [wv, List.map, ValueHOL.rStruct.injEq, List.cons.injEq, ValueHOL.val.injEq,
    HolWordLab.word.injEq, and_true] at hxy
  obtain ⟨-, rfl⟩ := hxy
  exact hlen

theorem ite2_sound' (h : GcH a) {A : AEnv} (hchk : chk gcE A gcRet = some Ond) (Γ : Gam)
    (Θ : List (BitVec 64 × Nat)) :
    HoareG σ guestCtx (fun s => IG a A Γ Θ s ∧ ExW Γ s) gcIte2
      (fun r t => (SPost a gcE.sg.ret (Ogite2 A) Γ Θ r t ∧ WR r) ∧
        (r = none → ∃ B Γ' Θ', (Ogite2 A).nrm = some B ∧ Later Γ Θ Γ' Θ' ∧ IG a B Γ' Θ' t ∧
          ExW Γ' t)) := by
  unfold gcIte2
  refine hoareG_ite ?_ ?_
  · unfold gcRet at hchk ⊢
    exact hoareG_conseq (retW h hchk Γ Θ
      (fun s => (IG a A Γ Θ s ∧ ExW Γ s) ∧ ∃ w, ev s (.cmp .notEqual (.rfield 0 (lv (nm "w"))) (cw 0))
        = some (.val (.word w)) ∧ w ≠ 0)
      (fun s hs => hs.1.1) (fun s _ hs v hv => ValP_gcret h hs.1.1 hs.1.2 hs.2 hv))
      (fun s _ hs => hs) (fun r t _ _ H => ⟨⟨spost_join_left H.1, H.2⟩, fun hr => by
        subst hr
        obtain ⟨B, -, -, hB, -⟩ := H.1
        exact absurd hB (by simp [Ond])⟩)
  · exact hoareG_skip fun s _ hs => ⟨⟨⟨A, Γ, Θ, og_nrm A, later_refl Γ Θ, hs.1.1⟩, wr_none⟩,
      fun _ => ⟨A, Γ, Θ, og_nrm A, later_refl Γ Θ, hs.1.1, hs.1.2⟩⟩

theorem ite2_sound (h : GcH a) {A : AEnv} (hchk : chk gcE A gcRet = some Ond) (Γ : Gam)
    (Θ : List (BitVec 64 × Nat)) :
    HoareG σ guestCtx (fun s => IG a A Γ Θ s ∧ ExW Γ s) gcIte2
      (fun r t => SPost a gcE.sg.ret (Ogite2 A) Γ Θ r t ∧ WR r) :=
  hoareG_conseq (ite2_sound' h hchk Γ Θ) (fun s _ hs => hs) (fun r t _ _ H => H.1)

/-- `ExW` after a typed `htab_get` on a code-write table (`tHTc32` or `tHTbc32`). -/
theorem hex_get (h : GcH a) {th : Nat} {Γ Γ' : Gam} {Θ : List (BitVec 64 × Nat)}
    {s st : State σ} {vs : List (ValueHOL 64)}
    {callee : HolFiniteMapExact MlS (ValueHOL 64)} {v : ValueHOL 64}
    (hext : Ext Γ Γ') (hLc : HgFitsC th vs (callEntryStateHOLFinite s callee) (.returned v) st)
    (hsh : shapeEqHOL (shapeOfHOLExact v) (.comb [.one, .one]) = true)
    (hGe : G a.Cb a.H Γ (callEntryStateHOLFinite s callee)) (hlen : vs.length = 2)
    (hav0 : ∃ w, vs[0]? = some w ∧ VOk Γ Θ (.gp th 0) w)
    (hav1 : ∃ w, vs[1]? = some w ∧ VOk Γ Θ .top w) :
    ExW Γ' (setVarHOLFinite (nm "w") v { st with locals := s.locals }) := by
  obtain ⟨w0, hw0, T, rfl, ob, hob, hty, hT⟩ := hav0
  obtain ⟨w1, hw1, K, rfl, -⟩ := hav1
  match vs, hlen, hw0, hw1 with
  | [x0, x1], _, hw0, hw1 =>
    simp only [List.getElem?_cons_zero, Option.some.injEq] at hw0
    simp only [List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hw1
    subst hw0 hw1
    obtain ⟨ws, hws, rfl⟩ := eq_wv_of_shapeEq' (k := 2) hsh
    match ws, hws with
    | [a', b'], _ =>
      rw [h.hCb, h.hH] at hGe
      have hfit : Fits Γ (.ptr th) T := ⟨ob, hob, by rw [hT]; simp, hty⟩
      refine ⟨a', b', lk_set_self _ _ _, fun ha' => fits_ext hext ?_⟩
      exact hLc Γ hGe T K rfl hfit _ rfl a' b' rfl ha'

theorem b8_sound (h : GcH a) (Γ : Gam) (Θ : List (BitVec 64 × Nat)) :
    HoareG σ guestCtx (fun s => IG a Bk Γ Θ s ∧ True) gcB8
      (fun r t => SPost a gcE.sg.ret O8 Γ Θ r t ∧ WR r) := by
  unfold gcB8
  refine dcW h.ha h.hE h.hT h.hsg h.hcE fs_gws funSpec_ws_get_code WR (fun r hab => wr_abn hab)
    (fun _ _ => True) ExC Γ Θ (ok := Ond) ?_ ?_
  · intro s st vs callee v Γ' _ _ hvs hLc hext hsh hGe hav
    obtain ⟨ws, hws, rfl⟩ := eq_wv_of_shapeEq' (k := 2) hsh
    rw [h.hCb, h.hH] at hGe
    have hval := hLc (by simp [Good]) Γ hGe
    match ws, hws with
    | [x, y], _ => exact ⟨x, y, lk_set_self _ _ _, hval _ rfl x y rfl⟩
  · intro Γ Θ
    exact retW h chk_gretc Γ Θ _ (fun s hs => hs.1) (fun s _ hs v hv => by
      obtain ⟨x, y, hl, hb⟩ := hs.2
      rw [ev_lv, hl] at hv
      cases hv
      intro v' hv' x' y' hxy
      cases hv'
      simp only [wv, List.map, ValueHOL.rStruct.injEq, List.cons.injEq, ValueHOL.val.injEq,
        HolWordLab.word.injEq, and_true] at hxy
      obtain ⟨-, rfl⟩ := hxy
      exact hb)

theorem b7_sound (h : GcH a) (Γ : Gam) (Θ : List (BitVec 64 × Nat)) :
    HoareG σ guestCtx (fun s => IG a Bk Γ Θ s ∧ True) (.seq gcHs gcB8)
      (fun r t => SPost a gcE.sg.ret O7 Γ Θ r t ∧ WR r) := by
  refine seqW0 (op := AOut.normal Bk) (A' := Bk) WR (fun _ _ => True) rfl ?_ ?_ Γ Θ
  · exact fun Γ Θ => hoareG_pre (callDW h.ha h.hE h.hT h.hsg h.hcE fs_ghs _ WR wr_none
      (fun r hab => wr_abn hab) Γ Θ) (fun s _ hs => hs.1)
  · exact fun Γ Θ => b8_sound h Γ Θ

theorem b6_sound (h : GcH a) (Γ : Gam) (Θ : List (BitVec 64 × Nat)) :
    HoareG σ guestCtx (fun s => IG a Bw2 Γ Θ s ∧ True) gcB6
      (fun r t => SPost a gcE.sg.ret O6 Γ Θ r t ∧ WR r) := by
  unfold gcB6
  refine dcW h.ha h.hE h.hT h.hsg h.hcE fs_gsk (funSpec_true (σ := σ) (X := guestCtx) _) WR
    (fun r hab => wr_abn hab) (fun _ _ => True) (fun _ _ => True) Γ Θ (ok := O7) ?_ ?_
  · exact fun _ _ _ _ _ _ _ _ _ _ _ _ _ _ => trivial
  · exact fun Γ Θ => b7_sound h Γ Θ

theorem b5_sound (h : GcH a) (Γ : Gam) (Θ : List (BitVec 64 × Nat)) :
    HoareG σ guestCtx (fun s => IG a Bw2 Γ Θ s ∧ ExW Γ s) (.seq gcIte2 gcB6)
      (fun r t => SPost a gcE.sg.ret O5 Γ Θ r t ∧ WR r) := by
  refine seqW0 (op := Ogite2 Bw2) (A' := Bw2) WR ExW (og_nrm Bw2) ?_ ?_ Γ Θ
  · exact fun Γ Θ => ite2_sound h chk_gretw2 Γ Θ
  · exact fun Γ Θ => b6_sound h Γ Θ

theorem b4_sound (h : GcH a) (Γ : Gam) (Θ : List (BitVec 64 × Nat)) :
    HoareG σ guestCtx (fun s => IG a Bw Γ Θ s ∧ ExW Γ s) gcB4
      (fun r t => SPost a gcE.sg.ret O4 Γ Θ r t ∧ WR r) := by
  unfold gcB4
  refine seqW (op := AOut.normal Bw2) (A' := Bw2) WR ExW ExW rfl ?_ ?_ Γ Θ
  · intro Γ Θ
    unfold gcHg2
    refine callAE h.ha h.hE h.hT h.hsg h.hcE fs_gget2 _ (funSpec_get_fitsC (σ := σ) (th := Types.tHTbc32) (Or.inr rfl)) WR wr_none
      (fun r hab => wr_abn hab) ExW ExW Γ Θ ?_
    intro s st vs callee v Γ' hig hExs hvs hLc hext hval hGe hav
    obtain ⟨a0, b0, hlw, -⟩ := hExs
    have hsh : shapeEqHOL (shapeOfHOLExact v) (.comb [.one, .one]) = true := by
      have := valid_local hval hlw
      have e : shapeOfHOLExact (wv [a0, b0]) = .comb [.one, .one] := by
        simp [shapeOfHOLExact, wv]
      rw [e] at this
      exact this
    exact hex_get h hext hLc hsh hGe (by rw [Rec.evs_len2 hvs]; rfl)
      (hav 0 _ (by rfl)) (hav 1 _ (by rfl))
  · exact fun Γ Θ => b5_sound h Γ Θ

theorem b3_sound (h : GcH a) (Γ : Gam) (Θ : List (BitVec 64 × Nat)) :
    HoareG σ guestCtx (fun s => IG a Bw Γ Θ s ∧ ExW Γ s) (.seq gcIte2 gcB4)
      (fun r t => SPost a gcE.sg.ret O3 Γ Θ r t ∧ WR r) := by
  refine seqW (op := Ogite2 Bw) (A' := Bw) WR ExW ExW (og_nrm Bw) ?_ ?_ Γ Θ
  · exact fun Γ Θ => ite2_sound' h chk_gretw Γ Θ
  · exact fun Γ Θ => b4_sound h Γ Θ

theorem b2_sound (h : GcH a) (Γ : Gam) (Θ : List (BitVec 64 × Nat)) :
    HoareG σ guestCtx (fun s => IG a Bm Γ Θ s ∧ True) gcB2
      (fun r t => SPost a gcE.sg.ret O2 Γ Θ r t ∧ WR r) := by
  unfold gcB2
  refine dcW h.ha h.hE h.hT h.hsg h.hcE fs_gget1 (funSpec_get_fitsC (σ := σ) (th := Types.tHTc32) (Or.inl rfl)) WR
    (fun r hab => wr_abn hab) (fun _ _ => True) ExW Γ Θ (ok := O3) ?_ ?_
  · intro s st vs callee v Γ' hig _ hvs hLc hext hsh hGe hav
    exact hex_get h hext hLc hsh hGe (by rw [Rec.evs_len2 hvs]; rfl)
      (hav 0 _ (by rfl)) (hav 1 _ (by rfl))
  · exact fun Γ Θ => b3_sound h Γ Θ

theorem b1_sound (h : GcH a) (Γ : Gam) (Θ : List (BitVec 64 × Nat)) :
    HoareG σ guestCtx (fun s => IG a Bm Γ Θ s ∧ True) (.seq gcIte1 gcB2)
      (fun r t => SPost a gcE.sg.ret O1 Γ Θ r t ∧ WR r) := by
  refine seqW0 (op := Ogite2 Bm) (A' := Bm) WR (fun _ _ => True) (og_nrm Bm) ?_ ?_ Γ Θ
  · exact fun Γ Θ => ite1_sound h Γ Θ
  · exact fun Γ Θ => b2_sound h Γ Θ

theorem top_gc (h : GcH a) (Γ : Gam) (Θ : List (BitVec 64 × Nat)) :
    HoareG σ guestCtx (fun s => IG a Bi Γ Θ s ∧ True) gcBody
      (fun r t => SPost a gcE.sg.ret O0 Γ Θ r t ∧ WR r) := by
  unfold gcBody
  refine dcW h.ha h.hE h.hT h.hsg h.hcE fs_gme (funSpec_true (σ := σ) (X := guestCtx) _) WR
    (fun r hab => wr_abn hab) (fun _ _ => True) (fun _ _ => True) Γ Θ (ok := O1) ?_ ?_
  · exact fun _ _ _ _ _ _ _ _ _ _ _ _ _ _ => trivial
  · exact fun Γ Θ => b1_sound h Γ Θ

end sound

end InitECandidate.Solver.MemSafe.Sc

#print axioms InitECandidate.Solver.MemSafe.Sc.ite2_sound
#print axioms InitECandidate.Solver.MemSafe.Sc.top_gc
