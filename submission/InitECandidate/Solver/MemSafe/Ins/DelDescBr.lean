import InitECandidate.Solver.MemSafe.Ins.DelStore

set_option autoImplicit false

/-!
# Descent, branch case (tag 3)

```
if level == klen {
  if lds (node + 168) == 0 { res = node; }
  else { st node + 160, 0; st node + 168, 0; res = _collapse_branch(node); }
} else { var idx = ld8 (key + level); var fr2 = scratch_alloc(40); <record>; ... go = 1; }
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

/-- `DEK` is closed under a store below the scratch pointer. -/
theorem dek_upd {a : Act σ} {K KL Nd Lv Res T K0 : BitVec 64} {Γ : Gam} {q : Ptrs}
    {M : Mem} (hhi : a.p0.sp < 2 ^ 64) (A V : BitVec 64) (h : DEK a K KL Nd Lv Res T K0 Γ q M)
    (hA : A.toNat < q.sp) : DEK a K KL Nd Lv Res T K0 Γ q (Struct.upd M A V) :=
  ⟨⟨h.1.1, h.1.2.1, h.1.2.2.1, h.1.2.2.2.1, dl_upd_out hhi (by omega) h.1.2.2.2.2⟩, h.2⟩

theorem dlBr_G {vs : List (ValueHOL 64)}
    {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs} (ha : ActOK (aD vs s0 Γ0 p0) guestCtx)
    (hL0 : Layout Types.guestC p0 Γ0) (hsp0 : p0.sp ≤ scratchEnd)
    {K KL Nd Lv Res T K0 : BitVec 64} (hK0 : K0 = 3)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (GI (aD vs s0 Γ0 p0) (LKV ((nm "k", K0) :: kvD K KL Nd Lv Res 0 T))
        (fun Γ q M => DEK (aD vs s0 Γ0 p0) K KL Nd Lv Res T K0 Γ q M))
      dlBr (GPJ (aD vs s0 Γ0 p0) (JD (aD vs s0 Γ0 p0) K KL) Rv) := by
  have hX0 := (Rec.foldOK_guestR (σ := σ)).hX
  set a := aD vs s0 Γ0 p0 with hadef
  have haC : a.C = Types.guestC := rfl
  have hse : scratchEnd < 2 ^ 64 := by decide
  have hhi : a.p0.sp < 2 ^ 64 := by have : a.p0.sp = p0.sp := rfl; omega
  set kv0 : List (MlS × BitVec 64) := (nm "k", K0) :: kvD K KL Nd Lv Res 0 T with hkv0
  have hnodeM : (nm "node", Nd) ∈ kv0 := by simp [kv0, kvD]
  have hlevM : (nm "level", Lv) ∈ kv0 := by simp [kv0, kvD]
  have hklenM : (nm "klen", KL) ∈ kv0 := by simp [kv0, kvD]
  have hkeyM : (nm "key", K) ∈ kv0 := by simp [kv0, kvD]
  have hresM : (nm "res", Res) ∈ kv0 := by simp [kv0, kvD]
  have hRnd : ∀ Γ, NdT Γ Nd K0 → Rt Γ Nd := fun Γ h =>
    rt_of_obj (t := Types.tNBRANCH) (by simp [Node.nodeTys]) (ndT_branch h hK0)
  have hCb : ∀ Γ q M, DEK a K KL Nd Lv Res T K0 Γ q M → CbE Nd Γ := fun Γ q M h =>
    ndT_branch h.2 hK0
  by_cases hLv : Lv.toNat ≤ KL.toNat
  swap
  · exact hoareG_false fun s _ ⟨_, Γ, q, _, _, _, hE⟩ => hLv hE.1.2.1
  unfold dlBr
  refine ite_val2 (x := nm "level") (y := nm "klen") (o := .equal) hlevM hklenM (fun s h => h.1)
    (fun hc => ?_) (fun hc => ?_)
  · -- `level == klen`
    refine hoareG_ite ?_ ?_
    · refine hoareG_pre (P := GI a (LKV kv0) (fun Γ q M => DEK a K KL Nd Lv Res T K0 Γ q M)) ?_
        (fun s _ h => h.1)
      refine gpj_of_gp (gp_assign ha.hH
        (L' := LKV ((nm "k", K0) :: kvD K KL Nd Lv Nd 0 T)) (fun s hs hL v hv => ?_)) (fun t h => ?_)
      · have e : v = .val (.word Nd) := Option.some.inj (hv.symm.trans (ev_lw (hL _ hnodeM)))
        subst e
        exact lkv_upd_gen hL (by simp [kvD]) (by lkv_rest [kv0, kvD])
      · exact jd_fin (R' := Nd) (G := 0) (K0 := K0) (Res := Res) (by kv_sub [kvD]) hRnd h
    · refine hoareG_pre (P := GI a (LKV kv0) (fun Γ q M => DEK a K KL Nd Lv Res T K0 Γ q M)) ?_
        (fun s _ h => h.1)
      refine brValClr2_G ha (x := nm "node") (B := Nd) (L := LKV kv0)
        (E := fun Γ q M => DEK a K KL Nd Lv Res T K0 Γ q M)
        (fun m h => h _ hnodeM) hCb
        (fun Γ q M V1 V2 h hA1 hA2 => dek_upd hhi _ V2 (dek_upd hhi _ V1 h hA1) hA2) ?_
      refine gpj_mono (gp_callAVs ha (sumSpecA_collapse_branch_G) (funSpec_true _)
        (by simp [colSig]) (fun _ => rfl)
        (L1 := fun (v : ValueHOL 64) m => ∃ W : BitVec 64, v = .val (.word W) ∧
          LKV ((nm "k", K0) :: kvD K KL Nd Lv W 0 T) m)
        (E1 := fun (v : ValueHOL 64) Γ q M => DEK a K KL Nd Lv Res T K0 Γ q M ∧
          ∃ w : BitVec 64, v = .val (.word w) ∧ Rt Γ w)
        (fun s Γ q _ hL hh hE vs1 hvs => ?_)
        (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hsc hE hLc hQ co => ?_)
        (fun s st v hL hvalid => ?_)) ?_
      · have hev : evs s [lv (nm "node")] = some [.val (.word Nd)] :=
          evs_cons (ev_lw (hL _ hnodeM)) evs_nil
        rw [hev] at hvs
        cases hvs
        refine ⟨⟨rfl, fun i pt v hpt hv => ?_⟩, fun x => argCells_fitsany (by simp [colSig]),
          fun _ => ⟨Nd, rfl, hCb Γ q _ hE⟩⟩
        rcases i with _ | i
        · simp [colSig] at hpt hv
          subst hpt hv
          exact ⟨Nd, rfl, hE.1.1⟩
        · simp [colSig] at hpt
      · refine ⟨hQ.1, fun v hv => ⟨dek_call haC rfl hL0 hsp0 co hsc hE, ?_⟩⟩
        have hq0 : ptrsOf (callEntryStateHOLFinite s callee) = some q :=
          (Band.ptrsOf_glob (t := callEntryStateHOLFinite s callee) (s := s) rfl).trans co.heap0.2.1
        exact hQ.2 v hv q q' hq0 co.heap.2.1
      · obtain ⟨V, hV⟩ := valid_one (hL _ hresM) hvalid
        subst hV
        exact ⟨V, rfl, lkv_upd_gen (s := { st with locals := s.locals }) hL (by simp [kvD])
          (by lkv_rest [kv0, kvD])⟩
      · rintro t ⟨v, ⟨W, rfl, hlk⟩, Γ, q, he, hh, hsc, hE, W', hW', hRt⟩
        simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hW'
        subst hW'
        exact ⟨0, Nd, Lv, W, T, fun p hp => hlk p (by simp only [kvD, List.mem_cons, List.not_mem_nil, or_false] at hp ⊢; rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> simp [kvD]),
          Γ, q, he, hh, hsc, hE.1.1, hE.1.2.1, hE.1.2.2.1, hRt, hE.1.2.2.2.2⟩
  · -- `level != klen`
    have hLvKL : Lv.toNat < KL.toNat := by
      have hne : Lv ≠ KL := by
        intro h; subst h; simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] at hc
      have : Lv.toNat ≠ KL.toNat := fun h => hne (BitVec.eq_of_toNat_eq h)
      omega
    have hfidx : ∀ p ∈ kv0, p.1 ≠ nm "idx" := by lkv_fresh [kv0, kvD]
    -- `var idx = ld8 (key + level)`
    refine gp_decVJ ha.hH (Inv := JD a K KL)
      (L1 := fun v m => LKV kv0 m ∧ m.lookup (nm "idx") = some v ∧ ∃ X' : BitVec 64, v = .val (.word X'))
      (E1 := fun v Γ q M => DEK a K KL Nd Lv Res T K0 Γ q M ∧
        ∀ X' : BitVec 64, v = .val (.word X') → X'.toNat < 16)
      (fun s hs hL v hv => ?_) (fun s Γ q hs hL hh' hE v hv => ⟨hE, fun X' hX' => ?_⟩) ?_
      (fun t o h => jd_res ha.hH (by simp) o h)
    · obtain ⟨w, hw, -⟩ := ev_loadByte_word hv
      exact ⟨lkv_set (s := s) hL hfidx v, by simp [setVarHOLFinite, FUPDATE], w, hw⟩
    · have hA : ev s kA = some (.val (.word (K + Lv))) :=
        ev_add2 (ev_lw (hL _ hkeyM)) (ev_lw (hL _ hlevM))
      obtain ⟨w', hw', hlt⟩ := ldb_lt16 hh'.1 hE.1.2.2.1 hLvKL hA hv
      rw [hw'] at hX'
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hX'
      subst hX'
      exact hlt
    intro v
    by_cases hw : ∃ X' : BitVec 64, v = .val (.word X')
    swap
    · exact hoareG_false fun s _ h => hw h.1.2.2
    obtain ⟨IX, rfl⟩ := hw
    set kvI : List (MlS × BitVec 64) := (nm "idx", IX) :: kv0 with hkvI
    refine hoareG_pre (P := GI a (LKV kvI) (fun Γ q M => DEK a K KL Nd Lv Res T K0 Γ q M ∧
        IX.toNat < 16)) ?_
      (fun s _ ⟨⟨hL, hk, _⟩, Γ, q, he, hh, hsc, hE⟩ => ⟨lkv_cons hL hk, Γ, q, he, hh, hsc,
        hE.1, hE.2 IX rfl⟩)
    have hffr : ∀ p ∈ kvI, p.1 ≠ nm "fr2" := by lkv_fresh [kvI, kv0, kvD]
    -- `var fr2 = scratch_alloc(40)`
    refine gp_decCallJ ha (sumA_of_csumm scrAlloc_R) (MemSafe.allocSpec_scratch_alloc hX0)
      (by simp) (fun _ => rfl)
      (L1 := fun v m => LKV kvI m ∧ m.lookup (nm "fr2") = some v ∧ ∃ R : BitVec 64, v = .val (.word R))
      (E1 := fun v Γ q M => XB K KL Nd Lv Res IX K0 Γ ∧ ∀ R : BitVec 64,
        v = .val (.word R) → q.sp ≤ R.toNat ∧ R.toNat + 40 ≤ a.p0.sp ∧ FrD a R Γ q ∧
          DlG a Γ q M (R.toNat + 40) a.p0.sp T)
      (fun s Γ q _ hL hh hE vs1 hvs => ⟨(anyArgsG (by simp) rfl hvs).1,
        fun x hx => argCells_any (by simp) hx, fun _ => trivial⟩)
      (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hsc hE hLc hQ co => ⟨scrOld_nf0_co haC co rfl,
        fun v hv _ => ⟨xb_ext co.ext ⟨hE.1.1.1, hLvKL, hE.1.1.2.2.1, hE.1.1.2.2.2.1, hE.1.2, hE.2⟩,
          fun R hR => ?_⟩⟩)
      (fun s st v hL hsh => ⟨lkv_set (s := { st with locals := s.locals }) hL hffr v,
        by simp [setVarHOLFinite, FUPDATE], val_of_shapeEq_one' hsh⟩)
      ?_ (fun t o h => jd_res ha.hH (by simp) o h)
    · subst hv hR
      rw [evs_cons (ev_cw _ 40) evs_nil] at hvs
      cases hvs
      obtain ⟨hF, hsp, hq'⟩ := frD_of_alloc haC co rfl rfl hLc
      refine ⟨hq', by have := co.heap0.2.2.1.2.2; omega, hF, ?_⟩
      exact dl_mono_lo hsp (dl_call0 haC rfl hL0 hsp0 co hsc hE.1.1.2.2.2.2)
    intro v
    by_cases hw : ∃ R : BitVec 64, v = .val (.word R)
    swap
    · exact hoareG_false fun s _ h => hw h.1.2.2
    obtain ⟨R, rfl⟩ := hw
    refine hoareG_pre (dlBrRec_G ha hsp0 hK0 (K := K) (KL := KL) (Nd := Nd) (Lv := Lv) (Res := Res)
      (T := T) (IX := IX) (R := R)) ?_
    rintro s _ ⟨⟨hL, hk, _⟩, Γ, q, he, hh, hsc, hE⟩
    obtain ⟨hXB, hR⟩ := hE
    obtain ⟨hqsp, hR40, hF, hD⟩ := hR R rfl
    exact ⟨lkv_cons hL hk, Γ, q, he, hh, hsc, ⟨hXB, hqsp, hR40⟩, hF, hD, rfl_nil _ _⟩

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.dlBr_G
