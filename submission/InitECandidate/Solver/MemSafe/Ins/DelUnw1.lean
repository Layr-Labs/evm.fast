import InitECandidate.Solver.MemSafe.Ins.DelDescLoop

set_option autoImplicit false

/-!
# The unwinding loop: invariant and the two record kinds

Unwinding keeps `res` null-or-node (`Rt`) and the chain from `top` (`DlG`); each record is consumed by
`res = _delete_ext_finish(fnode, seg, sl, res)` (extension) or by
`st fnode + 32 + 8 * idx, res; res = _collapse_branch(fnode)` (branch).
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

/-- The memory facts of the unwinding. -/
def UE (a : Act σ) (Res T : BitVec 64) (Γ : Gam) (q : Ptrs) (M : Mem) : Prop :=
  Rt Γ Res ∧ DlG a Γ q M q.sp a.p0.sp T

def UJv (a : Act σ) (K KL Nd Lv G Res T : BitVec 64) (t : State σ) : Prop :=
  GI a (LKV (kvD K KL Nd Lv Res G T)) (fun Γ q M => UE a Res T Γ q M) t

def UJ (a : Act σ) (t : State σ) : Prop :=
  ∃ K KL Nd Lv G Res T : BitVec 64, UJv a K KL Nd Lv G Res T t

theorem uj_res {a : Act σ} (hH : HooksLawful a.C a.H) {x : MlS}
    (hx : x = nm "k" ∨ x = nm "seg" ∨ x = nm "sl" ∨ x = nm "pl" ∨ x = nm "fr" ∨ x = nm "fr2" ∨
      x = nm "idx" ∨ x = nm "eq" ∨ x = nm "fnode")
    (o : Option (ValueHOL 64)) {t : State σ} (h : UJ a t) :
    UJ a { t with locals := t.locals.resVarEq (x, o) } := by
  obtain ⟨K, KL, Nd, Lv, G, Res, T, hI⟩ := h
  exact ⟨K, KL, Nd, Lv, G, Res, T, gi_locals hH _ (lkv_res' hI.1 (kvD_fresh hx) o) hI⟩

theorem ue_call {a : Act σ} (haC : a.C = Types.guestC) (haCb : a.Cb = Types.guestC)
    (hL0 : Layout Types.guestC a.p0 a.Γ0) (hsp0 : a.p0.sp ≤ scratchEnd) {sg' : Sig}
    {vs : List (ValueHOL 64)} {Γ Γ' : Gam} {q q' : Ptrs} {s st : State σ}
    {r : PanSemResultExact 64} (co : CO a sg' vs Γ Γ' q q' s st r) (hsc : ScrOld a.Γ0 Γ)
    {Res T : BitVec 64} (h : UE a Res T Γ q s.memory) : UE a Res T Γ' q' st.memory :=
  ⟨rt_ext co.ext h.1, dl_call haC haCb hL0 hsp0 co hsc h.2⟩

/-- The address `fnode + 32 + 8 * ld (top + 32)`. -/
theorem ev_unwAddr {s : State σ} {FN T A : BitVec 64}
    (hf : s.locals.lookup (nm "fnode") = some (.val (.word FN)))
    (ht : s.locals.lookup (nm "top") = some (.val (.word T)))
    (h : ev s (.op .add [lv (nm "fnode"), cw 32, .panop .mul [ldK "top" 32, cw 8]]) =
      some (.val (.word A))) :
    A = FN + (32 + rd s.memory (T + BitVec.ofNat 64 32) * 8) := by
  obtain ⟨vs, hvs⟩ := ev_op_evs h
  obtain ⟨v1, vs1, rfl, h1, hvs1⟩ := evs_cons_inv hvs
  obtain ⟨v2, vs2, rfl, h2, hvs2⟩ := evs_cons_inv hvs1
  obtain ⟨v3, vs3, rfl, h3, -⟩ := evs_cons_inv hvs2
  obtain ⟨vm, hvm⟩ := ev_panop_evs h3
  obtain ⟨u1, us1, rfl, hu1, hus1⟩ := evs_cons_inv hvm
  have hu1' := Spec.Mpt.Dec.ev_ld ht 32 u1 hu1
  subst hu1'
  rw [ev_add3 (ev_lw hf) (ev_cw s 32) (ev_mul2 hu1 (ev_cw s 8))] at h
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at h
  rw [← h]
  simp

/-- **The child store of the unwinding**: `st fnode + 32 + 8 * ld (top + 32), res`. -/
theorem unwStore_G {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (aD vs s0 Γ0 p0) guestCtx) (hsp0 : p0.sp ≤ scratchEnd)
    {kv : List (MlS × BitVec 64)} {F Res T : BitVec 64}
    (hfn : (nm "fnode", F) ∈ kv) (htop : (nm "top", T) ∈ kv) (hres : (nm "res", Res) ∈ kv)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (GI (aD vs s0 Γ0 p0) (LKV kv)
        (fun Γ q M => (Rt Γ Res ∧ CbE F Γ ∧ (rd M (T + BitVec.ofNat 64 32)).toNat < 16) ∧
          DlG (aD vs s0 Γ0 p0) Γ q M q.sp p0.sp T))
      (.store (.op .add [lv (nm "fnode"), cw 32, .panop .mul [ldK "top" 32, cw 8]]) (lv (nm "res")))
      (GP (aD vs s0 Γ0 p0) (LKV kv)
        (fun Γ q M => (Rt Γ Res ∧ CbE F Γ) ∧ DlG (aD vs s0 Γ0 p0) Γ q M q.sp p0.sp T) Rv) := by
  set a := aD vs s0 Γ0 p0 with hadef
  have haC : a.C = Types.guestC := rfl
  have hse : scratchEnd < 2 ^ 64 := by decide
  have hhi : a.p0.sp < 2 ^ 64 := by have : a.p0.sp = p0.sp := rfl; omega
  refine gp_stWX ha (L := LKV kv) (E := _) (E' := _)
    (fun s v hL hv => ⟨Res, by rw [ev_lw (hL _ hres)] at hv; exact (Option.some.inj hv).symm⟩) ?_
    ?_
  · intro s Γ q A V hL hh hE hAe hVe
    have hVR : V = Res := by
      rw [ev_lw (hL _ hres)] at hVe; simpa using hVe.symm
    have hAF := ev_unwAddr (hL _ hfn) (hL _ htop) hAe
    obtain ⟨⟨hRt, hCb, hw16⟩, hD⟩ := hE
    obtain ⟨o, ho, hob, hot⟩ := hCb
    obtain ⟨p1, hp1, hord, hLy, -⟩ := hh.1
    have hsz : (Types.guestC.ty o.ty).minSz ≤ o.size := (hLy.1 o ho).2.2.2.1
    set w := rd s.memory (T + BitVec.ofNat 64 32) with hwdef
    obtain ⟨hs1, hs2⟩ := nbranch_slot hot hsz (j := 4 + w.toNat) (by omega) (by omega)
    refine ⟨o, ho, 4 + w.toNat, hs1, hs2, ?_, ?_⟩
    · rw [hAF]; unfold Obj.cell; rw [hob]
      have hw8 : (BitVec.ofNat 64 (8 * (4 + w.toNat))) = 32 + w * 8 := by
        apply BitVec.eq_of_toNat_eq
        simp only [BitVec.toNat_add, BitVec.toNat_mul, BitVec.toNat_ofNat]
        have h32 : (32 : BitVec 64).toNat = 32 := rfl
        have h8 : (8 : BitVec 64).toNat = 8 := rfl
        rw [h32, h8]
        omega
      rw [hw8]
    · show Fits Γ ((Types.guestC.ty o.ty).slot (4 + w.toNat)) V
      rw [nbranch_child hot (by omega) (by omega), hVR]
      exact fits_of_rt hRt
  · intro s Γ q A V hL hh hE hAe hVe
    have hVR : V = Res := by
      rw [ev_lw (hL _ hres)] at hVe; simpa using hVe.symm
    have hAF := ev_unwAddr (hL _ hfn) (hL _ htop) hAe
    obtain ⟨⟨hRt, hCb, hw16⟩, hD⟩ := hE
    have hA : A.toNat < q.sp := by
      have := br_cell_below haC hh hCb (j := 4 + (rd s.memory (T + BitVec.ofNat 64 32)).toNat)
        (by omega)
      have hw8 : (BitVec.ofNat 64 (8 * (4 + (rd s.memory (T + BitVec.ofNat 64 32)).toNat))) =
          32 + rd s.memory (T + BitVec.ofNat 64 32) * 8 := by
        apply BitVec.eq_of_toNat_eq
        simp only [BitVec.toNat_add, BitVec.toNat_mul, BitVec.toNat_ofNat]
        have h32 : (32 : BitVec 64).toNat = 32 := rfl
        have h8 : (8 : BitVec 64).toNat = 8 := rfl
        rw [h32, h8]
        omega
      rw [hAF]; rw [hw8] at this; exact this
    exact ⟨⟨hRt, hCb⟩, dl_upd_out hhi (by omega) hD⟩

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.unwStore_G
