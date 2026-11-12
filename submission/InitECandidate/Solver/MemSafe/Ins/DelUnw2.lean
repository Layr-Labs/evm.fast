import InitECandidate.Solver.MemSafe.Ins.DelUnw1
import InitECandidate.Solver.MemSafe.Ins.DelFinFn

set_option autoImplicit false

/-!
# The unwinding loop: one record
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

def kvF (K KL Nd Lv Res G T F : BitVec 64) : List (MlS × BitVec 64) :=
  (nm "fnode", F) :: kvD K KL Nd Lv Res G T

/-- After the record's action: `res` is a new null-or-node. -/
def Inv1 (a : Act σ) (K KL Nd Lv G T F : BitVec 64) (t : State σ) : Prop :=
  ∃ W : BitVec 64, GI a (LKV (kvF K KL Nd Lv W G T F)) (fun Γ q M => UE a W T Γ q M) t

/-- The extension record: `res = _delete_ext_finish(fnode, ld (top + 24), ld (top + 32), res)`. -/
theorem unwExt_G {vs : List (ValueHOL 64)}
    {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs} (ha : ActOK (aD vs s0 Γ0 p0) guestCtx)
    (hL0 : Layout Types.guestC p0 Γ0) (hsp0 : p0.sp ≤ scratchEnd)
    {K KL Nd Lv G Res T F : BitVec 64} {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (GI (aD vs s0 Γ0 p0) (LKV (kvF K KL Nd Lv Res G T F))
        (fun Γ q M => UE (aD vs s0 Γ0 p0) Res T Γ q M ∧
          (∃ o ∈ Γ, o.base = F ∧ o.ty = Types.tNEXT) ∧
            NIn Γ (rd M (T + BitVec.ofNat 64 24)) (rd M (T + BitVec.ofNat 64 32))))
      (.call (some (some (.local, nm "res"), none)) (nm "_delete_ext_finish")
        [lv (nm "fnode"), ldK "top" 24, ldK "top" 32, lv (nm "res")])
      (GPJ (aD vs s0 Γ0 p0) (Inv1 (aD vs s0 Γ0 p0) K KL Nd Lv G T F) Rv) := by
  set a := aD vs s0 Γ0 p0 with hadef
  have haC : a.C = Types.guestC := rfl
  have hfnM : (nm "fnode", F) ∈ kvF K KL Nd Lv Res G T F := by simp [kvF]
  have htopM : (nm "top", T) ∈ kvF K KL Nd Lv Res G T F := by simp [kvF, kvD]
  have hresM : (nm "res", Res) ∈ kvF K KL Nd Lv Res G T F := by simp [kvF, kvD]
  refine gpj_mono (gp_callAVs ha (sumSpecA_delete_ext_finish_G) (funSpec_true _)
    (by simp [dxSig]) (fun _ => rfl)
    (L1 := fun (v : ValueHOL 64) m => ∃ W : BitVec 64, v = .val (.word W) ∧
      LKV (kvF K KL Nd Lv W G T F) m)
    (E1 := fun (v : ValueHOL 64) Γ q M => ∃ w : BitVec 64, v = .val (.word w) ∧
      UE a w T Γ q M)
    (fun s Γ q _ hL hh hE vs1 hvs => ?_)
    (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hsc hE hLc hQ co => ?_)
    (fun s st v hL hvalid => ?_)) ?_
  · obtain ⟨v1, r1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨v2, r2, rfl, h2, hr2⟩ := evs_cons_inv hr1
    obtain ⟨v3, r3, rfl, h3, hr3⟩ := evs_cons_inv hr2
    obtain ⟨v4, r4, rfl, h4, hr4⟩ := evs_cons_inv hr3
    rw [evs_nil] at hr4
    cases hr4
    have e1 : v1 = .val (.word F) := Option.some.inj (h1.symm.trans (ev_lw (hL _ hfnM)))
    have e2 := Spec.Mpt.Dec.ev_ld (hL _ htopM) 24 v2 h2
    have e3 := Spec.Mpt.Dec.ev_ld (hL _ htopM) 32 v3 h3
    have e4 : v4 = .val (.word Res) := Option.some.inj (h4.symm.trans (ev_lw (hL _ hresM)))
    subst e1 e2 e3 e4
    obtain ⟨⟨hRt, -⟩, hnext, hnin⟩ := hE
    refine ⟨⟨rfl, fun i pt v hpt hv => ?_⟩, fun x => argCells_fitsany (by simp [dxSig]),
      fun _ => ⟨F, _, _, Res, rfl, hnext, hnin, fits_of_rt hRt⟩⟩
    rcases i with _ | _ | _ | _ | i
    · simp [dxSig] at hpt hv
      subst hpt hv
      obtain ⟨o, ho, hb, ht⟩ := hnext
      exact ⟨F, rfl, Or.inr ⟨o, ho, hb, by simp [Node.nodeTys, ht]⟩⟩
    · simp [dxSig] at hpt hv; subst hpt; trivial
    · simp [dxSig] at hpt hv; subst hpt; trivial
    · simp [dxSig] at hpt hv
      subst hpt hv
      exact ⟨Res, rfl, fits_of_rt hRt⟩
    · simp [dxSig] at hpt
  · refine ⟨hQ.1, fun v hv => ?_⟩
    have hq0 : ptrsOf (callEntryStateHOLFinite s callee) = some q :=
      (Band.ptrsOf_glob (t := callEntryStateHOLFinite s callee) (s := s) rfl).trans co.heap0.2.1
    obtain ⟨w, hw, hRt⟩ := hQ.2 v hv q q' hq0 co.heap.2.1
    exact ⟨w, hw, hRt, (ue_call haC rfl hL0 hsp0 co hsc ⟨hE.1.1, hE.1.2⟩).2⟩
  · obtain ⟨V, hV⟩ := valid_one (hL _ hresM) hvalid
    subst hV
    exact ⟨V, rfl, lkv_upd_gen (s := { st with locals := s.locals }) hL (by simp [kvF, kvD])
      (by lkv_rest [kvF, kvD])⟩
  · rintro t ⟨v, ⟨W, rfl, hlk⟩, Γ, q, he, hh, hsc, w, hw, hUE⟩
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
    subst hw
    exact ⟨W, hlk, Γ, q, he, hh, hsc, hUE⟩

/-- The branch record: `st fnode + 32 + 8 * idx, res; res = _collapse_branch(fnode)`. -/
theorem unwBr_G {vs : List (ValueHOL 64)}
    {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs} (ha : ActOK (aD vs s0 Γ0 p0) guestCtx)
    (hL0 : Layout Types.guestC p0 Γ0) (hsp0 : p0.sp ≤ scratchEnd)
    {K KL Nd Lv G Res T F : BitVec 64} {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (GI (aD vs s0 Γ0 p0) (LKV (kvF K KL Nd Lv Res G T F))
        (fun Γ q M => (Rt Γ Res ∧ CbE F Γ ∧ (rd M (T + BitVec.ofNat 64 32)).toNat < 16) ∧
          DlG (aD vs s0 Γ0 p0) Γ q M q.sp p0.sp T))
      (.seq (.store (.op .add [lv (nm "fnode"), cw 32, .panop .mul [ldK "top" 32, cw 8]])
          (lv (nm "res")))
        (.call (some (some (.local, nm "res"), none)) (nm "_collapse_branch") [lv (nm "fnode")]))
      (GPJ (aD vs s0 Γ0 p0) (Inv1 (aD vs s0 Γ0 p0) K KL Nd Lv G T F) Rv) := by
  set a := aD vs s0 Γ0 p0 with hadef
  have haC : a.C = Types.guestC := rfl
  have hfnM : (nm "fnode", F) ∈ kvF K KL Nd Lv Res G T F := by simp [kvF]
  have htopM : (nm "top", T) ∈ kvF K KL Nd Lv Res G T F := by simp [kvF, kvD]
  have hresM : (nm "res", Res) ∈ kvF K KL Nd Lv Res G T F := by simp [kvF, kvD]
  refine gp_seqJ (L := LKV (kvF K KL Nd Lv Res G T F))
    (E := fun Γ q M => (Rt Γ Res ∧ CbE F Γ) ∧ DlG a Γ q M q.sp a.p0.sp T)
    (unwStore_G ha hsp0 hfnM htopM hresM) ?_
  refine gpj_mono (gp_callAVs ha (sumSpecA_collapse_branch_G) (funSpec_true _)
    (by simp [colSig]) (fun _ => rfl)
    (L1 := fun (v : ValueHOL 64) m => ∃ W : BitVec 64, v = .val (.word W) ∧
      LKV (kvF K KL Nd Lv W G T F) m)
    (E1 := fun (v : ValueHOL 64) Γ q M => ∃ w : BitVec 64, v = .val (.word w) ∧
      UE a w T Γ q M)
    (fun s Γ q _ hL hh hE vs1 hvs => ?_)
    (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hsc hE hLc hQ co => ?_)
    (fun s st v hL hvalid => ?_)) ?_
  · have hev : evs s [lv (nm "fnode")] = some [.val (.word F)] :=
      evs_cons (ev_lw (hL _ hfnM)) evs_nil
    rw [hev] at hvs
    cases hvs
    obtain ⟨⟨hRt, hCb⟩, -⟩ := hE
    refine ⟨⟨rfl, fun i pt v hpt hv => ?_⟩, fun x => argCells_fitsany (by simp [colSig]),
      fun _ => ⟨F, rfl, hCb⟩⟩
    rcases i with _ | i
    · simp [colSig] at hpt hv
      subst hpt hv
      obtain ⟨o, ho, hb, ht⟩ := hCb
      exact ⟨F, rfl, Or.inr ⟨o, ho, hb, by simp [Node.nodeTys, ht]⟩⟩
    · simp [colSig] at hpt
  · refine ⟨hQ.1, fun v hv => ?_⟩
    have hq0 : ptrsOf (callEntryStateHOLFinite s callee) = some q :=
      (Band.ptrsOf_glob (t := callEntryStateHOLFinite s callee) (s := s) rfl).trans co.heap0.2.1
    obtain ⟨w, hw, hRt⟩ := hQ.2 v hv q q' hq0 co.heap.2.1
    exact ⟨w, hw, hRt, (ue_call haC rfl hL0 hsp0 co hsc ⟨hE.1.1, hE.2⟩).2⟩
  · obtain ⟨V, hV⟩ := valid_one (hL _ hresM) hvalid
    subst hV
    exact ⟨V, rfl, lkv_upd_gen (s := { st with locals := s.locals }) hL (by simp [kvF, kvD])
      (by lkv_rest [kvF, kvD])⟩
  · rintro t ⟨v, ⟨W, rfl, hlk⟩, Γ, q, he, hh, hsc, w, hw, hUE⟩
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
    subst hw
    exact ⟨W, hlk, Γ, q, he, hh, hsc, hUE⟩

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.unwExt_G
#print axioms InitECandidate.Solver.MemSafe.Ins.unwBr_G
