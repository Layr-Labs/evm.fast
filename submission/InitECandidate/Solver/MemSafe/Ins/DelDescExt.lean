import InitECandidate.Solver.MemSafe.Ins.DelDescExtRec2

set_option autoImplicit false

/-!
# Descent, extension case (tag 2)

```
var seg = lds (node + 32); var sl = lds (node + 40);
var pl = common_prefix_length(seg, sl, key + level, klen - level);
if pl <+ sl { res = node; } else { var fr = scratch_alloc(40); <record>; top = fr; ... go = 1; }
```
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Ins
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn

variable {σ : Type} {X : Ctx 64}

theorem dlExt_G {vs : List (ValueHOL 64)}
    {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs} (ha : ActOK (aD vs s0 Γ0 p0) guestCtx)
    (hL0 : Layout Types.guestC p0 Γ0) (hsp0 : p0.sp ≤ scratchEnd)
    {K KL Nd Lv Res T K0 : BitVec 64} (hK0 : K0 = 2)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (GI (aD vs s0 Γ0 p0) (LKV ((nm "k", K0) :: kvD K KL Nd Lv Res 0 T))
        (fun Γ q M => DEK (aD vs s0 Γ0 p0) K KL Nd Lv Res T K0 Γ q M))
      dlExt (GPJ (aD vs s0 Γ0 p0) (JD (aD vs s0 Γ0 p0) K KL) Rv) := by
  have hX0 := (Rec.foldOK_guestR (σ := σ)).hX
  set a := aD vs s0 Γ0 p0 with hadef
  have haC : a.C = Types.guestC := rfl
  set kv0 : List (MlS × BitVec 64) := (nm "k", K0) :: kvD K KL Nd Lv Res 0 T with hkv0
  have hnodeM : (nm "node", Nd) ∈ kv0 := by simp [kv0, kvD]
  have hRnd : ∀ Γ, NdT Γ Nd K0 → Rt Γ Nd := fun Γ h =>
    rt_of_obj (t := Types.tNEXT) (by simp [Node.nodeTys]) (ndT_next h hK0)
  unfold dlExt
  -- `var seg = lds (node + 32)`
  refine gp_decVJ ha.hH (Inv := JD a K KL)
    (L1 := fun v m => LKV kv0 m ∧ m.lookup (nm "seg") = some v ∧ ∃ W : BitVec 64, v = .val (.word W))
    (E1 := fun v Γ q M => DEK a K KL Nd Lv Res T K0 Γ q M ∧
      ∀ W : BitVec 64, v = .val (.word W) → NIn Γ W (rd M (Nd + BitVec.ofNat 64 40)))
    (fun s hs hL v hv => ?_) (fun s Γ q hs hL hh' hE v hv => ⟨hE, fun W hW => ?_⟩) ?_
    (fun t o h => jd_res ha.hH (by simp) o h)
  · have := Spec.Mpt.Dec.ev_ld (hL _ hnodeM) 32 v hv
    exact ⟨lkv_set (s := s) hL (by lkv_fresh [kv0, kvD]) v, by simp [setVarHOLFinite, FUPDATE], _, this⟩
  · have hv' := Spec.Mpt.Dec.ev_ld (hL _ hnodeM) 32 v hv
    rw [hv'] at hW
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hW
    subst hW
    exact (ext_facts hh'.1 (ndT_next hE.2 hK0)).1
  intro v
  by_cases hw : ∃ W : BitVec 64, v = .val (.word W)
  swap
  · exact hoareG_false fun s _ h => hw h.1.2.2
  obtain ⟨SEG, rfl⟩ := hw
  set kv1 : List (MlS × BitVec 64) := (nm "seg", SEG) :: kv0 with hkv1
  refine hoareG_pre (P := GI a (LKV kv1) (fun Γ q M => DEK a K KL Nd Lv Res T K0 Γ q M ∧
      NIn Γ SEG (rd M (Nd + BitVec.ofNat 64 40)))) ?_
    (fun s _ ⟨⟨hL, hk, _⟩, Γ, q, he, hh, hsc, hE⟩ => ⟨lkv_cons hL hk, Γ, q, he, hh, hsc,
      hE.1, hE.2 SEG rfl⟩)
  have hnodeM1 : (nm "node", Nd) ∈ kv1 := by simp [kv1, kv0, kvD]
  -- `var sl = lds (node + 40)`
  refine gp_decVJ ha.hH (Inv := JD a K KL)
    (L1 := fun v m => LKV kv1 m ∧ m.lookup (nm "sl") = some v ∧ ∃ W : BitVec 64, v = .val (.word W))
    (E1 := fun v Γ q M => DEK a K KL Nd Lv Res T K0 Γ q M ∧
      ∀ W : BitVec 64, v = .val (.word W) → NIn Γ SEG W)
    (fun s hs hL v hv => ?_) (fun s Γ q hs hL hh' hE v hv => ⟨hE.1, fun W hW => ?_⟩) ?_
    (fun t o h => jd_res ha.hH (by simp) o h)
  · have := Spec.Mpt.Dec.ev_ld (hL _ hnodeM1) 40 v hv
    exact ⟨lkv_set (s := s) hL (by lkv_fresh [kv1, kv0, kvD]) v, by simp [setVarHOLFinite, FUPDATE], _, this⟩
  · have hv' := Spec.Mpt.Dec.ev_ld (hL _ hnodeM1) 40 v hv
    rw [hv'] at hW
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hW
    subst hW
    exact hE.2
  intro v
  by_cases hw : ∃ W : BitVec 64, v = .val (.word W)
  swap
  · exact hoareG_false fun s _ h => hw h.1.2.2
  obtain ⟨SL, rfl⟩ := hw
  set kv2 : List (MlS × BitVec 64) := (nm "sl", SL) :: kv1 with hkv2
  refine hoareG_pre (P := GI a (LKV kv2) (fun Γ q M => DEK a K KL Nd Lv Res T K0 Γ q M ∧
      NIn Γ SEG SL)) ?_
    (fun s _ ⟨⟨hL, hk, _⟩, Γ, q, he, hh, hsc, hE⟩ => ⟨lkv_cons hL hk, Γ, q, he, hh, hsc,
      hE.1, hE.2 SL rfl⟩)
  have hsegM : (nm "seg", SEG) ∈ kv2 := by simp [kv2, kv1]
  have hslM : (nm "sl", SL) ∈ kv2 := by simp [kv2]
  have hkeyM : (nm "key", K) ∈ kv2 := by simp [kv2, kv1, kv0, kvD]
  have hklenM : (nm "klen", KL) ∈ kv2 := by simp [kv2, kv1, kv0, kvD]
  have hlevM : (nm "level", Lv) ∈ kv2 := by simp [kv2, kv1, kv0, kvD]
  have hfpl : ∀ p ∈ kv2, p.1 ≠ nm "pl" := by lkv_fresh [kv2, kv1, kv0, kvD]
  -- `var pl = common_prefix_length(seg, sl, key + level, klen - level)`
  refine gp_decCallJ ha (sumA_of_csumm cpl_R) (funSpec_of_funRet (Spec.Mpt.funRet_cpl hX0))
    (by simp) (fun _ => rfl)
    (L1 := fun v m => LKV kv2 m ∧ m.lookup (nm "pl") = some v ∧ ∃ PL : BitVec 64, v = .val (.word PL))
    (E1 := fun v Γ q M => (DEK a K KL Nd Lv Res T K0 Γ q M ∧ NIn Γ SEG SL) ∧
      ∀ PL : BitVec 64, v = .val (.word PL) → PL.toNat ≤ SL.toNat ∧ PL.toNat + Lv.toNat ≤ KL.toNat)
    (fun s Γ q _ hL hh hE vs1 hvs => ⟨(anyArgsG (by simp) rfl hvs).1,
      fun x hx => argCells_any (by simp) hx, fun _ => trivial⟩)
    (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hsc hE hLc hQ co =>
      ⟨scrOld_nf0_co haC co rfl, fun v hv _ => ⟨⟨dek_call haC rfl hL0 hsp0 co hsc hE.1,
        nIn_ext co.ext hE.2⟩, fun PL hPL => ?_⟩⟩)
    (fun s st v hL hsh => ⟨lkv_set (s := { st with locals := s.locals }) hL hfpl v,
      by simp [setVarHOLFinite, FUPDATE], val_of_shapeEq_one' hsh⟩)
    ?_ (fun t o h => jd_res ha.hH (by simp) o h)
  · have hev : evs s [lv (nm "seg"), lv (nm "sl"), kA, kB] =
        some [.val (.word SEG), .val (.word SL), .val (.word (K + Lv)), .val (.word (KL - Lv))] :=
      evs_cons (ev_lw (hL _ hsegM)) (evs_cons (ev_lw (hL _ hslM))
        (evs_cons (ev_add2 (ev_lw (hL _ hkeyM)) (ev_lw (hL _ hlevM)))
          (evs_cons (ev_sub2 (ev_lw (hL _ hklenM)) (ev_lw (hL _ hlevM))) evs_nil)))
    rw [hev] at hvs
    cases hvs
    obtain ⟨A, C, al, bl, pl, hvs', hv', h1, h2⟩ := hLc v hv
    simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hvs'
    obtain ⟨-, hal, -, hbl, -⟩ := hvs'
    subst hPL
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hv'
    subst hv'
    subst hal hbl
    refine ⟨h1, ?_⟩
    have hLvKL : Lv.toNat ≤ KL.toNat := hE.1.1.2.1
    have hsub := BitVec.toNat_sub_of_le (x := KL) (y := Lv) (by simpa [BitVec.le_def] using hLvKL)
    omega
  intro v
  by_cases hw : ∃ PL : BitVec 64, v = .val (.word PL)
  swap
  · exact hoareG_false fun s _ h => hw h.1.2.2
  obtain ⟨PL, rfl⟩ := hw
  set kv3 : List (MlS × BitVec 64) := (nm "pl", PL) :: kv2 with hkv3
  refine hoareG_pre (P := GI a (LKV kv3) (fun Γ q M => (DEK a K KL Nd Lv Res T K0 Γ q M ∧
      NIn Γ SEG SL) ∧ (PL.toNat ≤ SL.toNat ∧ PL.toNat + Lv.toNat ≤ KL.toNat))) ?_
    (fun s _ ⟨⟨hL, hk, _⟩, Γ, q, he, hh, hsc, hE⟩ => ⟨lkv_cons hL hk, Γ, q, he, hh, hsc,
      hE.1, hE.2 PL rfl⟩)
  have hplM : (nm "pl", PL) ∈ kv3 := by simp [kv3]
  have hslM3 : (nm "sl", SL) ∈ kv3 := by simp [kv3, kv2]
  have hnodeM3 : (nm "node", Nd) ∈ kv3 := by simp [kv3, kv2, kv1, kv0, kvD]
  refine ite_val2 (x := nm "pl") (y := nm "sl") (o := .lower) hplM hslM3 (fun s h => h.1)
    (fun hc => ?_) (fun hc => ?_)
  · -- `pl < sl`: `res = node`
    refine gpj_of_gp (gp_assign ha.hH
      (L' := LKV ((nm "pl", PL) :: (nm "sl", SL) :: (nm "seg", SEG) :: (nm "k", K0) ::
        kvD K KL Nd Lv Nd 0 T)) (fun s hs hL v hv => ?_)) (fun t h => ?_)
    · have e : v = .val (.word Nd) := Option.some.inj (hv.symm.trans (ev_lw (hL _ hnodeM3)))
      subst e
      exact lkv_upd_gen hL (by simp [kvD]) (by lkv_rest [kv3, kv2, kv1, kv0, kvD])
    · obtain ⟨hL, Γ, q, he, hh, hsc, hE⟩ := h
      exact jd_fin (R' := Nd) (G := 0) (K0 := K0) (Res := Res) (by kv_sub [kvD]) hRnd
        ⟨hL, Γ, q, he, hh, hsc, hE.1.1⟩
  · -- `var fr = scratch_alloc(40)`
    have hSLPL : SL.toNat ≤ PL.toNat := by
      simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, decide_eq_false_iff_not, BitVec.lt_def] at hc
      omega
    have hffr : ∀ p ∈ kv3, p.1 ≠ nm "fr" := by lkv_fresh [kv3, kv2, kv1, kv0, kvD]
    refine gp_decCallJ ha (sumA_of_csumm scrAlloc_R) (MemSafe.allocSpec_scratch_alloc hX0)
      (by simp) (fun _ => rfl)
      (L1 := fun v m => LKV kv3 m ∧ m.lookup (nm "fr") = some v ∧ ∃ R : BitVec 64, v = .val (.word R))
      (E1 := fun v Γ q M => XE K KL Nd Lv Res SEG SL K0 Γ ∧ ∀ R : BitVec 64,
        v = .val (.word R) → q.sp ≤ R.toNat ∧ R.toNat + 40 ≤ a.p0.sp ∧ FrD a R Γ q ∧
          DlG a Γ q M (R.toNat + 40) a.p0.sp T)
      (fun s Γ q _ hL hh hE vs1 hvs => ⟨(anyArgsG (by simp) rfl hvs).1,
        fun x hx => argCells_any (by simp) hx, fun _ => trivial⟩)
      (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hsc hE hLc hQ co => ⟨scrOld_nf0_co haC co rfl,
        fun v hv _ => ⟨xe_ext co.ext ⟨hE.1.1.1.1, hE.1.1.1.2.1, hE.1.1.1.2.2.1, hE.1.1.1.2.2.2.1,
          hE.1.1.2, hE.1.2, by have := hE.2.2; omega⟩, fun R hR => ?_⟩⟩)
      (fun s st v hL hsh => ⟨lkv_set (s := { st with locals := s.locals }) hL hffr v,
        by simp [setVarHOLFinite, FUPDATE], val_of_shapeEq_one' hsh⟩)
      ?_ (fun t o h => jd_res ha.hH (by simp) o h)
    · subst hv hR
      rw [evs_cons (ev_cw _ 40) evs_nil] at hvs
      cases hvs
      obtain ⟨hF, hsp, hq'⟩ := frD_of_alloc haC co rfl rfl hLc
      refine ⟨hq', by have := co.heap0.2.2.1.2.2; omega, hF, ?_⟩
      exact dl_mono_lo hsp (dl_call0 haC rfl hL0 hsp0 co hsc hE.1.1.1.2.2.2.2)
    intro v
    by_cases hw : ∃ R : BitVec 64, v = .val (.word R)
    swap
    · exact hoareG_false fun s _ h => hw h.1.2.2
    obtain ⟨R, rfl⟩ := hw
    refine hoareG_pre (dlExtRec_G ha hsp0 hK0 (K := K) (KL := KL) (Nd := Nd) (Lv := Lv) (Res := Res) (T := T)
      (SEG := SEG) (SL := SL) (PL := PL) (R := R)) ?_
    rintro s _ ⟨⟨hL, hk, _⟩, Γ, q, he, hh, hsc, hE⟩
    obtain ⟨hXE, hR⟩ := hE
    obtain ⟨hqsp, hR40, hF, hD⟩ := hR R rfl
    exact ⟨lkv_cons hL hk, Γ, q, he, hh, hsc, ⟨hXE, hqsp, hR40⟩, hF, hD, rfl_nil _ _⟩

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.dlExt_G
