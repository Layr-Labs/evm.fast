import InitECandidate.Solver.MemSafe.Puc.Adopt

/-!
# Puc U3/U4: `te_new`, the stores into `te`, `msg_new`, the stores into `m`, the two tables

Stage lemmas with abstract `En`, `S` (each calls the next): `pu_s2` (`te_new` to the adoption of `te`), `pu_s8` (`msg_new`),
`pu_s9` (the stores into `m`), `pu_s21` (`aa`, `ak`); the last one hands `CallReady` to the call stage `hcall`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Puc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Ptx

variable {σ : Type}

macro "addTac" h:term : tactic => `(tactic| ((repeat' apply addF_of); exact $h))

/-- The facts every stage keeps. -/
structure Base (S : FS) (T N vmw : BitVec 64) : Prop where
  g1 : S (Fct.gobj (nm "bs") tBS)
  g2 : S (Fct.gobj (nm "bal_accounts") tHTd20)
  g3 : S (Fct.gobj (nm "bal_key_buf") tB64)
  g4 : S (Fct.gobj (nm "bal_idx_accts") tHTh28)
  g5 : S (Fct.gobj (nm "bal_idx_stor") tHTh60)
  g6 : S (Fct.gobj (nm "sk_buf") tB64)
  g7 : S (Fct.gobj nmTs tTS)
  ovm : S (Fct.obj vmw tB24 0)
  bT : S (Fct.bufok0 T 20)
  hN : S (Fct.prop (N.toNat < 2 ^ 32))
  hT0 : S (Fct.prop (T ≠ 0))
  gl : ∀ g ty, S (Fct.gobj g ty) → cW.contains g = false

theorem Base.add {S : FS} {T N vmw : BitVec 64} (B : Base S T N vmw) {L : List Fct}
    (hL : ∀ X ∈ L, ∀ g ty, X ≠ Fct.gobj g ty) : Base (addF S L) T N vmw :=
  ⟨addF_of B.g1, addF_of B.g2, addF_of B.g3, addF_of B.g4, addF_of B.g5, addF_of B.g6, addF_of B.g7,
    addF_of B.ovm, addF_of B.bT, addF_of B.hN, addF_of B.hT0, hgl_addF B.gl hL⟩

theorem Base.sat {S : FS} {T N vmw : BitVec 64} (B : Base S T N vmw) (wt : BitVec 64) :
    Base (SAt S wt) T N vmw :=
  ⟨Or.inl ⟨B.g1, trivial⟩, Or.inl ⟨B.g2, trivial⟩, Or.inl ⟨B.g3, trivial⟩, Or.inl ⟨B.g4, trivial⟩,
    Or.inl ⟨B.g5, trivial⟩, Or.inl ⟨B.g6, trivial⟩, Or.inl ⟨B.g7, trivial⟩, Or.inl ⟨B.ovm, trivial⟩,
    Or.inl ⟨B.bT, trivial⟩, Or.inl ⟨B.hN, trivial⟩, Or.inl ⟨B.hT0, trivial⟩, by
      intro g ty h
      rcases h with ⟨h, -⟩ | h
      · exact B.gl g ty h
      · cases h⟩

theorem Base.sam {S : FS} {T N vmw : BitVec 64} (B : Base S T N vmw) (wm : BitVec 64) :
    Base (SAm S wm) T N vmw :=
  ⟨Or.inl ⟨B.g1, trivial⟩, Or.inl ⟨B.g2, trivial⟩, Or.inl ⟨B.g3, trivial⟩, Or.inl ⟨B.g4, trivial⟩,
    Or.inl ⟨B.g5, trivial⟩, Or.inl ⟨B.g6, trivial⟩, Or.inl ⟨B.g7, trivial⟩, Or.inl ⟨B.ovm, trivial⟩,
    Or.inl ⟨B.bT, trivial⟩, Or.inl ⟨B.hN, trivial⟩, Or.inl ⟨B.hT0, trivial⟩, by
      intro g ty h
      rcases h with ⟨h, -⟩ | h
      · exact B.gl g ty h
      · cases h⟩

theorem Base.of_sub {S S' : FS} {T N vmw : BitVec 64} (B : Base S T N vmw) (hsub : ∀ f, S f → S' f)
    (hgl : ∀ g ty, S' (Fct.gobj g ty) → S (Fct.gobj g ty)) : Base S' T N vmw :=
  ⟨hsub _ B.g1, hsub _ B.g2, hsub _ B.g3, hsub _ B.g4, hsub _ B.g5, hsub _ B.g6, hsub _ B.g7,
    hsub _ B.ovm, hsub _ B.bT, hsub _ B.hN, hsub _ B.hT0, fun g ty h => B.gl g ty (hgl g ty h)⟩

theorem base_S0 (T N vmw : BitVec 64) : Base (PuS0 T N vmw) T N vmw := by
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩ <;> try (simp [PuS0]; done)
  intro g ty h
  unfold PuS0 at h
  rcases h with h | h | h | h | h | h | h | h | h | h | h <;> first | (cases h; decide) | cases h

theorem noRd_S0 (T N vmw : BitVec 64) : NoRd (PuS0 T N vmw) := by
  intro f hf y
  unfold PuS0 at hf
  rcases hf with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> simp [Fct.reads]

theorem noRd_sat {S : FS} (h : NoRd S) (wt : BitVec 64) : NoRd (SAt S wt) := by
  intro f hf y
  rcases hf with ⟨hf, -⟩ | rfl
  · exact h f hf y
  · simp [Fct.reads]

/-- The state at the call: everything `pu_adopt_m` and the call stage need. -/
structure CallReady (En : Env) (S : FS) (wm wt vmw T N n aaw akw : BitVec 64) : Prop where
  base : Base S T N vmw
  hm : En (nm "m") = some (.val (.word wm))
  fb : S (Fct.fbuf wm 176)
  pp : S (Fct.prop (BlkP wm 176))
  m8 : S (Fct.memw (wm + BitVec.ofNat 64 8) wt)
  m16 : S (Fct.memw (wm + BitVec.ofNat 64 16) vmw)
  m24 : S (Fct.memw (wm + BitVec.ofNat 64 24) T)
  m32 : S (Fct.memw (wm + BitVec.ofNat 64 32) T)
  m40 : S (Fct.memw (wm + BitVec.ofNat 64 40) (BitVec.ofNat 64 30000000))
  m96 : S (Fct.memw (wm + BitVec.ofNat 64 96) N)
  m120 : S (Fct.memw (wm + BitVec.ofNat 64 120) n)
  m152 : S (Fct.memw (wm + BitVec.ofNat 64 152) aaw)
  m160 : S (Fct.memw (wm + BitVec.ofNat 64 160) akw)
  ote : S (Fct.obj wt tTE 200)
  oaa : S (Fct.obj aaw tHTh20 0)
  oak : S (Fct.obj akw tHTh52 0)
  hn : S (Fct.prop (n.toNat + 63 < 2 ^ 64))

theorem tab_htab_new_20_8 :
    CSumm σ guestCtx guestC (HR σ) (nm "htab_new") ⟨[.eq 20, .eq 8], [.fits (.ptr tHTh20)], [], true⟩ [] :=
  ctab% ShardsR.tab_soundR

theorem tab_htab_new_52_8 :
    CSumm σ guestCtx guestC (HR σ) (nm "htab_new") ⟨[.eq 52, .eq 8], [.fits (.ptr tHTh52)], [], true⟩ [] :=
  ctab% ShardsR.tab_soundR

/-! ## The tables and the call (pucS21 to pucS26) -/

theorem pu_s21 {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    (hQT : LocIns QT) {T Dv N vmw wm wt n : BitVec 64} (B : Base S T N vmw)
    (hfb : S (Fct.fbuf wm 176)) (hpp : S (Fct.prop (BlkP wm 176)))
    (hrd : RdAt S wm [120, 96, 40, 32, 24, 16, 8])
    (m8 : S (Fct.memw (wm + BitVec.ofNat 64 8) wt)) (m16 : S (Fct.memw (wm + BitVec.ofNat 64 16) vmw))
    (m24 : S (Fct.memw (wm + BitVec.ofNat 64 24) T)) (m32 : S (Fct.memw (wm + BitVec.ofNat 64 32) T))
    (m40 : S (Fct.memw (wm + BitVec.ofNat 64 40) (BitVec.ofNat 64 30000000)))
    (m96 : S (Fct.memw (wm + BitVec.ofNat 64 96) N)) (m120 : S (Fct.memw (wm + BitVec.ofNat 64 120) n))
    (ote : S (Fct.obj wt tTE 200)) (hn : S (Fct.prop (n.toNat + 63 < 2 ^ 64)))
    (hEm : En (nm "m") = some (.val (.word wm)))
    (hcall : ∀ (En' : Env) (S' : FS) (aaw akw : BitVec 64), CallReady En' S' wm wt vmw T N n aaw akw →
      Hoare σ guestCtx (PA E En' S') pucS26 QT) :
    Hoare σ guestCtx (PA E En S) pucS21 QT := by
  unfold pucS21
  refine hdecHtabNew (locIns_resIns hQT _) tab_htab_new_20_8 B.gl ?_
  intro aaw
  have B1 := B.add (L := [Fct.obj aaw tHTh20 0]) (by intro X hX; simp at hX; subst hX; simp)
  have hrd1 : RdAt (addF S [Fct.obj aaw tHTh20 0]) wm [120, 96, 40, 32, 24, 16, 8] :=
    rdAt_addF_nr hrd (by intro X hX; simp at hX; subst hX; simp [Fct.reads])
  have hEm1 : (En.set (nm "aa") (.val (.word aaw))) (nm "m") = some (.val (.word wm)) := by
    rw [env_set_ne _ _ (by decide)]; exact hEm
  unfold pucS22
  refine hseqN (hn_stPr (x := aaw) (off := 152) (N := 176) (addF_of hfb) (addF_of hpp)
    (fun s hpa => evI_add (evI_lv (hpa.2 _ _ hEm1)) (evI_cw s 152))
    (fun s hpa => evI_lv (hpa.2 _ _ (env_set_self _ _ _))) (by norm_num) (by norm_num)
    (hdis1_of_rdAt hrd1 (by intro o ho; simp at ho; omega) (by intro o ho; simp at ho; omega) (by norm_num))) ?_
  have hrd2 := rdAt_addF_memw hrd1 152 aaw
  unfold pucS23
  refine hdecHtabNew (locIns_resIns hQT _) tab_htab_new_52_8 (Base.add B1 (L := [Fct.memw (wm + BitVec.ofNat 64 152) aaw])
    (by intro X hX; simp at hX; subst hX; simp)).gl ?_
  intro akw
  have hEm2 : ((En.set (nm "aa") (.val (.word aaw))).set (nm "ak") (.val (.word akw))) (nm "m") = some (.val (.word wm)) := by
    rw [env_set_ne _ _ (by decide), env_set_ne _ _ (by decide)]; exact hEm
  have hEa : ((En.set (nm "aa") (.val (.word aaw))).set (nm "ak") (.val (.word akw))) (nm "ak") =
      some (.val (.word akw)) := env_set_self _ _ _
  have hrd3 : RdAt (addF (addF (addF S [Fct.obj aaw tHTh20 0]) [Fct.memw (wm + BitVec.ofNat 64 152) aaw])
      [Fct.obj akw tHTh52 0]) wm [152, 120, 96, 40, 32, 24, 16, 8] :=
    rdAt_addF_nr hrd2 (by intro X hX; simp at hX; subst hX; simp [Fct.reads])
  unfold pucS24
  refine hseqN (hn_stPr (x := akw) (off := 160) (N := 176) (addF_of (addF_of (addF_of hfb))) (addF_of (addF_of (addF_of hpp)))
    (fun s hpa => evI_add (evI_lv (hpa.2 _ _ hEm2)) (evI_cw s 160))
    (fun s hpa => evI_lv (hpa.2 _ _ hEa)) (by norm_num) (by norm_num)
    (hdis1_of_rdAt hrd3 (by intro o ho; simp at ho; omega) (by intro o ho; simp at ho; omega) (by norm_num))) ?_
  unfold pucS25
  refine hseqN hn_skip ?_
  refine hcall _ _ aaw akw ⟨?_, hEm2, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · exact ((B1.add (L := [Fct.memw (wm + BitVec.ofNat 64 152) aaw])
      (by intro X hX; simp at hX; subst hX; simp)).add (L := [Fct.obj akw tHTh52 0])
      (by intro X hX; simp at hX; subst hX; simp)).add (L := [Fct.memw (wm + BitVec.ofNat 64 160) akw])
      (by intro X hX; simp at hX; subst hX; simp)
  · exact addF_of (addF_of (addF_of (addF_of hfb)))
  · exact addF_of (addF_of (addF_of (addF_of hpp)))
  · exact addF_of (addF_of (addF_of (addF_of m8)))
  · exact addF_of (addF_of (addF_of (addF_of m16)))
  · exact addF_of (addF_of (addF_of (addF_of m24)))
  · exact addF_of (addF_of (addF_of (addF_of m32)))
  · exact addF_of (addF_of (addF_of (addF_of m40)))
  · exact addF_of (addF_of (addF_of (addF_of m96)))
  · exact addF_of (addF_of (addF_of (addF_of m120)))
  · exact addF_of (addF_of (addF_mem (by simp)))
  · exact addF_mem (by simp)
  · exact addF_of (addF_of (addF_of (addF_of ote)))
  · exact addF_of (addF_of (addF_of (addF_mem (by simp))))
  · exact addF_of (addF_mem (by simp))
  · exact addF_of (addF_of (addF_of (addF_of hn)))


/-! ## The stores into `m` (pucS9 to pucS20) -/

theorem pu_s9 {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    (hQT : LocIns QT) {T Dv N vmw bew wm wt c n : BitVec 64} (B : Base S T N vmw)
    (hfb : S (Fct.fbuf wm 176)) (hpp : S (Fct.prop (BlkP wm 176))) (hrd : RdAt S wm [])
    (ote : S (Fct.obj wt tTE 200)) (hn : S (Fct.prop (n.toNat + 63 < 2 ^ 64)))
    (hEt : En (nm "target") = some (.val (.word T))) (hEd : En (nm "data") = some (.val (.word Dv)))
    (hEn : En (nm "data_n") = some (.val (.word N))) (hEc : En (nm "code") = some (wv [c, n]))
    (hEte : En (nm "te") = some (.val (.word wt))) (hEm : En (nm "m") = some (.val (.word wm)))
    (hvm : E.s0.globals.lookup (nm "vm_system_address") = some (.val (.word vmw)))
    (hbe : E.s0.globals.lookup (nm "be") = some (.val (.word bew)))
    (hcall : ∀ (En' : Env) (S' : FS) (aaw akw : BitVec 64), CallReady En' S' wm wt vmw T N n aaw akw →
      Hoare σ guestCtx (PA E En' S') pucS26 QT) :
    Hoare σ guestCtx (PA E En S) pucS9 QT := by
  have ha : ∀ (off : Nat) (S1 : FS), ∀ s : State σ, PA E En S1 s →
      EvI s (.op .add [lv (nm "m"), cw off]) (.val (.word (wm + BitVec.ofNat 64 off))) :=
    fun off S1 s hpa => evI_add (evI_lv (hpa.2 _ _ hEm)) (evI_cw s off)
  have hvmE : ∀ (S1 : FS), ∀ s : State σ, PA E En S1 s → EvI s (gv (nm "vm_system_address")) (.val (.word vmw)) :=
    fun S1 s hpa => evI_gv (pa_glob (by decide) hvm hpa)
  have hbeE : ∀ (S1 : FS), ∀ s : State σ, PA E En S1 s → EvI s (gv (nm "be")) (.val (.word bew)) :=
    fun S1 s hpa => evI_gv (pa_glob (by decide) hbe hpa)
  have hTE : ∀ (S1 : FS), ∀ s : State σ, PA E En S1 s → EvI s (lv (nm "target")) (.val (.word T)) :=
    fun S1 s hpa => evI_lv (hpa.2 _ _ hEt)
  unfold pucS9
  refine hseqN (hn_stP (w := wm) (N := 176) (off := 0) (k := 1) hfb hpp (ha 0 S)
    (hlen_of_evI (hbeE S)) (by norm_num) (by norm_num)
    (hdis_of_rdAt hrd (by simp) (by simp) (by norm_num))) ?_
  unfold pucS10
  refine hseqN (hn_stPr (x := wt) (off := 8) (N := 176) hfb hpp (ha 8 S)
    (fun s hpa => evI_lv (hpa.2 _ _ hEte)) (by norm_num) (by norm_num)
    (hdis1_of_rdAt hrd (by simp) (by simp) (by norm_num))) ?_
  have hrd1 := rdAt_addF_memw hrd 8 wt
  unfold pucS11
  refine hseqN (hn_stPr (x := vmw) (off := 16) (N := 176) (by simp [addF, hfb]) (by simp [addF, hpp]) (ha 16 _)
    (hvmE _) (by norm_num) (by norm_num)
    (hdis1_of_rdAt hrd1 (by intro o ho; simp at ho; omega) (by intro o ho; simp at ho; omega) (by norm_num))) ?_
  have hrd2 := rdAt_addF_memw hrd1 16 vmw
  unfold pucS12
  refine hseqN (hn_stPr (x := T) (off := 24) (N := 176) (by simp [addF, hfb]) (by simp [addF, hpp]) (ha 24 _)
    (hTE _) (by norm_num) (by norm_num)
    (hdis1_of_rdAt hrd2 (by intro o ho; simp at ho; omega) (by intro o ho; simp at ho; omega) (by norm_num))) ?_
  have hrd3 := rdAt_addF_memw hrd2 24 T
  unfold pucS13
  refine hseqN (hn_stPr (x := T) (off := 32) (N := 176) (by simp [addF, hfb]) (by simp [addF, hpp]) (ha 32 _)
    (hTE _) (by norm_num) (by norm_num)
    (hdis1_of_rdAt hrd3 (by intro o ho; simp at ho; omega) (by intro o ho; simp at ho; omega) (by norm_num))) ?_
  have hrd4 := rdAt_addF_memw hrd3 32 T
  unfold pucS14
  refine hseqN (hn_stPr (x := BitVec.ofNat 64 30000000) (off := 40) (N := 176) (by simp [addF, hfb])
    (by simp [addF, hpp]) (ha 40 _) (fun s hpa => evI_cw s 30000000) (by norm_num) (by norm_num)
    (hdis1_of_rdAt hrd4 (by intro o ho; simp at ho; omega) (by intro o ho; simp at ho; omega) (by norm_num))) ?_
  have hrd5 := rdAt_addF_memw hrd4 40 (BitVec.ofNat 64 30000000)
  unfold pucS15
  refine hseqN (hn_stP (off := 48) (k := 1) (N := 176) (w := wm) (by simp [addF, hfb]) (by simp [addF, hpp]) (ha 48 _)
    (hlen_of_evI (x := BitVec.ofNat 64 97920 * BitVec.ofNat 64 16)
      (fun s hpa => evI_mul (evI_cw s 97920) (evI_cw s 16))) (by norm_num) (by norm_num)
    (hdis_of_rdAt hrd5 (by intro o ho; simp at ho; omega) (by intro o ho j hj; simp at ho; omega) (by norm_num))) ?_
  unfold pucS16
  refine hseqN (hn_stP (off := 88) (k := 1) (N := 176) (w := wm) (by simp [addF, hfb]) (by simp [addF, hpp]) (ha 88 _)
    (hlen_of_evI (x := Dv) (fun s hpa => evI_lv (hpa.2 _ _ hEd))) (by norm_num) (by norm_num)
    (hdis_of_rdAt hrd5 (by intro o ho; simp at ho; omega) (by intro o ho j hj; simp at ho; omega) (by norm_num))) ?_
  unfold pucS17
  refine hseqN (hn_stPr (x := N) (off := 96) (N := 176) (by simp [addF, hfb]) (by simp [addF, hpp]) (ha 96 _)
    (fun s hpa => evI_lv (hpa.2 _ _ hEn)) (by norm_num) (by norm_num)
    (hdis1_of_rdAt hrd5 (by intro o ho; simp at ho; omega) (by intro o ho; simp at ho; omega) (by norm_num))) ?_
  have hrd6 := rdAt_addF_memw hrd5 96 N
  unfold pucS18
  refine hseqN (hn_stP (off := 104) (k := 1) (N := 176) (w := wm) (by simp [addF, hfb]) (by simp [addF, hpp]) (ha 104 _)
    (hlen_of_evI (hTE _)) (by norm_num) (by norm_num)
    (hdis_of_rdAt hrd6 (by intro o ho; simp at ho; omega) (by intro o ho j hj; simp at ho; omega) (by norm_num))) ?_
  unfold pucS19
  refine hseqN (hn_stP (off := 112) (k := 1) (N := 176) (w := wm) (by simp [addF, hfb]) (by simp [addF, hpp]) (ha 112 _)
    (hlen_of_evI (x := c) (fun s hpa => evI_rf (evI_lv (hpa.2 _ _ hEc)) (i := 0) (by simp)))
    (by norm_num) (by norm_num)
    (hdis_of_rdAt hrd6 (by intro o ho; simp at ho; omega) (by intro o ho j hj; simp at ho; omega) (by norm_num))) ?_
  unfold pucS20
  refine hseqN (hn_stPr (x := n) (off := 120) (N := 176) (by simp [addF, hfb]) (by simp [addF, hpp]) (ha 120 _)
    (fun s hpa => evI_rf (evI_lv (hpa.2 _ _ hEc)) (i := 1) (by simp)) (by norm_num) (by norm_num)
    (hdis1_of_rdAt hrd6 (by intro o ho; simp at ho; omega) (by intro o ho; simp at ho; omega) (by norm_num))) ?_
  have hrd7 := rdAt_addF_memw hrd6 120 n
  exact pu_s21 (Dv := Dv) hQT (B.of_sub (fun f hf => by simp [addF, hf]) (by intro g ty h; simp [addF] at h; exact h))
    (by simp [addF, hfb]) (by simp [addF, hpp]) hrd7 (by simp [addF]) (by simp [addF]) (by simp [addF])
    (by simp [addF]) (by simp [addF]) (by simp [addF]) (by simp [addF]) (by simp [addF, ote]) (by addTac hn) hEm hcall


/-! ## `msg_new` (pucS8) -/

theorem pu_s8 {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    (hQT : LocIns QT) {T Dv N vmw bew wt c n : BitVec 64} (B : Base S T N vmw) (hnr : NoRd S)
    (ote : S (Fct.obj wt tTE 200)) (hn : S (Fct.prop (n.toNat + 63 < 2 ^ 64)))
    (hEt : En (nm "target") = some (.val (.word T))) (hEd : En (nm "data") = some (.val (.word Dv)))
    (hEn : En (nm "data_n") = some (.val (.word N))) (hEc : En (nm "code") = some (wv [c, n]))
    (hEte : En (nm "te") = some (.val (.word wt)))
    (hvm : E.s0.globals.lookup (nm "vm_system_address") = some (.val (.word vmw)))
    (hbe : E.s0.globals.lookup (nm "be") = some (.val (.word bew)))
    (hcall : ∀ (wm : BitVec 64) (En' : Env) (S' : FS) (aaw akw : BitVec 64),
      CallReady En' S' wm wt vmw T N n aaw akw → Hoare σ guestCtx (PA E En' S') pucS26 QT) :
    Hoare σ guestCtx (PA E En S) pucS8 QT := by
  unfold pucS8
  refine hdecNewP (locIns_resIns hQT _) mn_spec mn_fin (by norm_num) (by norm_num) (by norm_num) [] (by simp)
    B.gl [] (by simp) ?_
  intro wm
  have hnoh : ∀ y, y ≠ nm "m" → (En.set (nm "m") (.val (.word wm))) y = En y := fun y hy => env_set_ne _ _ hy
  refine pu_s9 hQT (B.of_sub (fun f hf => by simp [addF, hf]) (by intro g ty h; simp [addF] at h; exact h))
    (by simp [addF]) (by simp [addF]) ?_ (by simp [addF, ote]) (by addTac hn)
    (by rw [hnoh _ (by decide)]; exact hEt) (by rw [hnoh _ (by decide)]; exact hEd)
    (by rw [hnoh _ (by decide)]; exact hEn) (by rw [hnoh _ (by decide)]; exact hEc)
    (by rw [hnoh _ (by decide)]; exact hEte) (env_set_self _ _ _) hvm hbe (hcall wm)
  exact rdAt_addF_nr (rdAt_of_noRd hnr) (by intro X hX; simp at hX; rcases hX with rfl | rfl <;> simp [Fct.reads])

/-! ## `te_new`, the stores into `te`, the adoption of `te` (pucS2) -/

theorem noReadSafe_addF {S : FS} {L : List Fct} (h : ∀ f, S f → SafeK f → ∀ y, ¬ f.reads y)
    (hL : ∀ X ∈ L, SafeK X → ∀ y, ¬ X.reads y) : ∀ f, addF S L f → SafeK f → ∀ y, ¬ f.reads y := by
  intro f hf hs y
  rcases hf with hf | hf
  · exact h f hf hs y
  · exact hL f hf hs y

theorem noRd_sat' {S : FS} (h : ∀ f, S f → SafeK f → ∀ y, ¬ f.reads y) (wt : BitVec 64) : NoRd (SAt S wt) := by
  intro f hf y
  rcases hf with ⟨hf, hs⟩ | rfl
  · exact h f hf hs y
  · simp [Fct.reads]

theorem pu_s2 {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    (hQT : LocIns QT) {T Dv N vmw bew c n : BitVec 64} (B : Base S T N vmw) (hnr : NoRd S)
    (hn : S (Fct.prop (n.toNat + 63 < 2 ^ 64)))
    (hEt : En (nm "target") = some (.val (.word T))) (hEd : En (nm "data") = some (.val (.word Dv)))
    (hEn : En (nm "data_n") = some (.val (.word N))) (hEc : En (nm "code") = some (wv [c, n]))
    (hvm : E.s0.globals.lookup (nm "vm_system_address") = some (.val (.word vmw)))
    (hbe : E.s0.globals.lookup (nm "be") = some (.val (.word bew)))
    (hcall : ∀ (wt wm : BitVec 64) (En' : Env) (S' : FS) (aaw akw : BitVec 64),
      CallReady En' S' wm wt vmw T N n aaw akw → Hoare σ guestCtx (PA E En' S') pucS26 QT) :
    Hoare σ guestCtx (PA E En S) pucS2 QT := by
  unfold pucS2
  refine hdecNewP (locIns_resIns hQT _) tn_spec tn_fin (by norm_num) (by norm_num) (by norm_num) [144, 152]
    (by simp) B.gl [] (by simp) ?_
  intro wt
  have hnoh : ∀ y, y ≠ nm "te" → (En.set (nm "te") (.val (.word wt))) y = En y := fun y hy => env_set_ne _ _ hy
  have hEte : (En.set (nm "te") (.val (.word wt))) (nm "te") = some (.val (.word wt)) := env_set_self _ _ _
  have hEt' : (En.set (nm "te") (.val (.word wt))) (nm "target") = some (.val (.word T)) := by
    rw [hnoh _ (by decide)]; exact hEt
  have hEc' : (En.set (nm "te") (.val (.word wt))) (nm "code") = some (wv [c, n]) := by
    rw [hnoh _ (by decide)]; exact hEc
  have hrd : RdAt (addF S (Fct.fbuf wt 200 :: Fct.prop (wt.toNat % 8 = 0 ∧ heapBase ≤ wt.toNat ∧ wt.toNat + 200 ≤ heapEnd) ::
      (([144, 152] : List Nat).map (fun o => Fct.memw (wt + BitVec.ofNat 64 o) 0) ++
        ([] : List (BitVec 64 × Nat)).map (fun b => Fct.prop (b.1.toNat + b.2 ≤ wt.toNat))))) wt [144, 152] := by
    intro f hf y hy
    rcases hf with hf | hf
    · exact absurd hy (hnr f hf y)
    · simp at hf
      rcases hf with rfl | rfl | rfl | rfl
      · simp [Fct.reads] at hy
      · simp [Fct.reads] at hy
      · simp [Fct.reads] at hy; exact ⟨144, by simp, hy⟩
      · simp [Fct.reads] at hy; exact ⟨152, by simp, hy⟩
  have ha : ∀ (off : Nat) (S1 : FS), ∀ s : State σ, PA E (En.set (nm "te") (.val (.word wt))) S1 s →
      EvI s (.op .add [lv (nm "te"), cw off]) (.val (.word (wt + BitVec.ofNat 64 off))) :=
    fun off S1 s hpa => evI_add (evI_lv (hpa.2 _ _ hEte)) (evI_cw s off)
  unfold pucS3
  refine hseqN (hn_stPr (x := vmw) (off := 0) (N := 200) (by simp [addF]) (by simp [addF]) (ha 0 _)
    (fun s hpa => evI_gv (pa_glob (by decide) hvm hpa)) (by norm_num) (by norm_num)
    (hdis1_of_rdAt hrd (by simp) (by simp) (by norm_num))) ?_
  have hrd1 := rdAt_addF_memw hrd 0 vmw
  unfold pucS4
  refine hseqN (hn_stP (off := 8) (k := 1) (N := 200) (w := wt) (by simp [addF]) (by simp [addF]) (ha 8 _)
    (hlen_of_evI (x := T) (fun s hpa => evI_lv (hpa.2 _ _ hEt'))) (by norm_num) (by norm_num)
    (hdis_of_rdAt hrd1 (by intro o ho; simp at ho; omega) (by intro o ho j hj; simp at ho; omega) (by norm_num))) ?_
  unfold pucS5
  refine hseqN (hn_stP (off := 48) (k := 4) (N := 200) (w := wt) (by simp [addF]) (by simp [addF]) (ha 48 _)
    (fun s hpa v hv => len_ld4 hv) (by norm_num) (by norm_num)
    (hdis_of_rdAt hrd1 (by intro o ho; simp at ho; omega) (by intro o ho j hj; simp at ho; omega) (by norm_num))) ?_
  unfold pucS6
  refine hseqN (hn_stP (off := 80) (k := 1) (N := 200) (w := wt) (by simp [addF]) (by simp [addF]) (ha 80 _)
    (hlen_of_evI (x := BitVec.ofNat 64 30000000) (fun s hpa => evI_cw s 30000000)) (by norm_num) (by norm_num)
    (hdis_of_rdAt hrd1 (by intro o ho; simp at ho; omega) (by intro o ho j hj; simp at ho; omega) (by norm_num))) ?_
  unfold pucS7
  refine hseqN (hn_stP (off := 88) (k := 1) (N := 200) (w := wt) (by simp [addF]) (by simp [addF]) (ha 88 _)
    (hlen_of_evI (x := BitVec.ofNat 64 97920 * BitVec.ofNat 64 16)
      (fun s hpa => evI_mul (evI_cw s 97920) (evI_cw s 16))) (by norm_num) (by norm_num)
    (hdis_of_rdAt hrd1 (by intro o ho; simp at ho; omega) (by intro o ho j hj; simp at ho; omega) (by norm_num))) ?_
  -- adopt `te`
  refine hoare_pre (P := PA E (En.set (nm "te") (.val (.word wt)))
    (SAt (addF (addF S (Fct.fbuf wt 200 :: Fct.prop (wt.toNat % 8 = 0 ∧ heapBase ≤ wt.toNat ∧ wt.toNat + 200 ≤ heapEnd) ::
      (([144, 152] : List Nat).map (fun o => Fct.memw (wt + BitVec.ofNat 64 o) 0) ++
        ([] : List (BitVec 64 × Nat)).map (fun b => Fct.prop (b.1.toNat + b.2 ≤ wt.toNat)))))
      [Fct.memw (wt + BitVec.ofNat 64 0) vmw]) wt)) ?_
    (fun t _ ht => pu_adopt_te (wt := wt) (vmw := vmw) (by simp [addF]) (by simp [addF]) (by simp [addF]) (by simp [addF]) (by simp [addF])
      (by simp [addF, B.ovm]) ht)
  have hB5 : Base (addF (addF S (Fct.fbuf wt 200 :: Fct.prop (wt.toNat % 8 = 0 ∧ heapBase ≤ wt.toNat ∧ wt.toNat + 200 ≤ heapEnd) ::
      (([144, 152] : List Nat).map (fun o => Fct.memw (wt + BitVec.ofNat 64 o) 0) ++
        ([] : List (BitVec 64 × Nat)).map (fun b => Fct.prop (b.1.toNat + b.2 ≤ wt.toNat)))))
      [Fct.memw (wt + BitVec.ofNat 64 0) vmw]) T N vmw :=
    B.of_sub (fun f hf => by simp [addF, hf]) (by intro g ty h; simp [addF] at h; exact h)
  refine pu_s8 hQT (hB5.sat wt) (noRd_sat' ?_ wt) (Or.inr rfl) (Or.inl ⟨by addTac hn, trivial⟩)
    (by rw [hnoh _ (by decide)]; exact hEt) (by rw [hnoh _ (by decide)]; exact hEd) (by rw [hnoh _ (by decide)]; exact hEn)
    hEc' hEte hvm hbe (hcall wt)
  refine noReadSafe_addF (noReadSafe_addF (fun f hf _ y => hnr f hf y) ?_) ?_
  · intro X hX hs y
    simp at hX
    rcases hX with rfl | rfl | rfl | rfl <;> simp_all [SafeK, Fct.reads]
  · intro X hX hs y
    simp at hX
    subst hX
    simp [SafeK] at hs


/-! ## The front: `ext_code_of` and everything up to the call (pucS1) -/

theorem pu_front {E : PtE σ} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    (hQT : LocIns QT) {T Dv N vmw bew : BitVec 64}
    (hvm : E.s0.globals.lookup (nm "vm_system_address") = some (.val (.word vmw)))
    (hbe : E.s0.globals.lookup (nm "be") = some (.val (.word bew))) (hE0 : Calls.EcoHyp σ)
    (hcall : ∀ (n wt wm : BitVec 64) (En' : Env) (S' : FS) (aaw akw : BitVec 64),
      CallReady En' S' wm wt vmw T N n aaw akw → Hoare σ guestCtx (PA E En' S') pucS26 QT) :
    Hoare σ guestCtx (PA E (PuEn0 T Dv N) (PuS0 T N vmw)) pucS1 QT := by
  have B0 := base_S0 T N vmw
  unfold pucS1
  refine hdec_eco (T := T) (locIns_resIns hQT _) hE0 (by simp (config := {decide := true}) [PuEn0]) B0.bT B0.gl ?_
  intro c n
  have hnoh : ∀ y, y ≠ nm "code" → ((PuEn0 T Dv N).set (nm "code") (wv [c, n])) y = PuEn0 T Dv N y :=
    fun y hy => env_set_ne _ _ hy
  refine pu_s2 (Dv := Dv) hQT (B0.of_sub (S' := fun g => PuS0 T N vmw g ∨ g = Fct.prop (n.toNat + 63 < 2 ^ 64))
    (fun f hf => Or.inl hf) (by intro g ty h; rcases h with h | h; exact h; cases h))
    (fun f hf y => by
      rcases hf with hf | rfl
      · exact noRd_S0 T N vmw f hf y
      · simp [Fct.reads])
    (Or.inr rfl) (by rw [hnoh _ (by decide)]; simp (config := {decide := true}) [PuEn0])
    (by rw [hnoh _ (by decide)]; simp (config := {decide := true}) [PuEn0])
    (by rw [hnoh _ (by decide)]; simp (config := {decide := true}) [PuEn0])
    (env_set_self _ _ _) hvm hbe (hcall n)

end InitECandidate.Solver.MemSafe.Puc


