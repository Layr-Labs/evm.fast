import InitECandidate.Solver.MemSafe.Dn.Resolve2
import InitECandidate.Solver.MemSafe.Dn.CoKit

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

/-!
# `_resolve_step` with the value slices (stage 2b)

`sumSpecA_resolve_step_V`: under `RsPre` (the node DB `db` is `NdbR` and the slice `[p, p + n)` lies in a
`tVAL` object), every returned `<r0, r1, r2, r3>` with `r0 ≠ 0` has `VInR tVAL Γ' r1 r2` (the slice to
decode: the argument slice itself, or a leaf of the node DB, by `funSpec_nodedb_lookup_leaf`), besides
the earlier `ResRx` and `ScrOld`.
-/

namespace InitECandidate.Solver.MemSafe.Dn
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.Spec.Mpt.Dec (rsBody rsCall rsStr rsNode code_resolve_step)

variable {σ : Type}

def RsPre (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  ∃ db p n : BitVec 64, vs = [.val (.word db), .val (.word p), .val (.word n)] ∧
    Hooks.NdbR Γ s.memory db ∧ Hooks.VInR Types.tVAL Γ p n

/-- A result with a nonzero kind carries a located slice. -/
def ResRxV (Γ' : Gam) (v : ValueHOL 64) : Prop :=
  ∀ r0 r1 r2 r3 : BitVec 64,
    v = .rStruct [.val (.word r0), .val (.word r1), .val (.word r2), .val (.word r3)] → r0 ≠ 0 →
      Hooks.VInR Types.tVAL Γ' r1 r2

def LRs (DB P N : BitVec 64) (m : LocalsH) : Prop :=
  m.lookup (nm "db") = some (.val (.word DB)) ∧ m.lookup (nm "p") = some (.val (.word P)) ∧
    m.lookup (nm "n") = some (.val (.word N))

def ERs (DB P N : BitVec 64) (Γ : Gam) (_ : Ptrs) (M : Mem) : Prop :=
  Hooks.NdbR Γ M DB ∧ Hooks.VInR Types.tVAL Γ P N

theorem lrs_set {DB P N : BitVec 64} {s st : State σ} (h : LRs DB P N s.locals) {x : MlS}
    (h1 : x ≠ nm "db") (h2 : x ≠ nm "p") (h3 : x ≠ nm "n") (v : ValueHOL 64) :
    LRs DB P N (setVarHOLFinite x v { st with locals := s.locals }).locals :=
  ⟨by rw [lk_set_ne _ _ h1]; exact h.1, by rw [lk_set_ne _ _ h2]; exact h.2.1,
    by rw [lk_set_ne _ _ h3]; exact h.2.2⟩

theorem lrs_res {DB P N : BitVec 64} {m : LocalsH} (h : LRs DB P N m) {x : MlS}
    (h1 : x ≠ nm "db") (h2 : x ≠ nm "p") (h3 : x ≠ nm "n") (o : Option (ValueHOL 64)) :
    LRs DB P N (m.resVarEq (x, o)) :=
  ⟨by rw [lookup_resVarEq_ne _ _ h1]; exact h.1, by rw [lookup_resVarEq_ne _ _ h2]; exact h.2.1,
    by rw [lookup_resVarEq_ne _ _ h3]; exact h.2.2⟩

theorem ers_co {a : Act σ} (haC : a.C = Types.guestC) (haCb : a.Cb = Types.guestC) {sg' : Sig}
    {vs : List (ValueHOL 64)} {Γ Γ' : Gam} {q q' : Ptrs} {s st : State σ}
    {r : PanSemResultExact 64} (co : CO a sg' vs Γ Γ' q q' s st r) {DB P N : BitVec 64}
    (h : ERs DB P N Γ q s.memory) : ERs DB P N Γ' q' st.memory :=
  ⟨ndbR_co haC haCb co h.1, Hooks.vInR_ext co.ext h.2⟩

theorem ev_rstruct_hd3 {s : State σ} {e1 e2 e3 : ExpHOL 64} {es : List (ExpHOL 64)}
    {v v1 v2 v3 : ValueHOL 64} (h : ev s (.rstruct (e1 :: e2 :: e3 :: es)) = some v)
    (h1 : ev s e1 = some v1) (h2 : ev s e2 = some v2) (h3 : ev s e3 = some v3) :
    ∃ vs', v = .rStruct (v1 :: v2 :: v3 :: vs') := by
  obtain ⟨vs, rfl, hvs⟩ := ev_rstruct_inv h
  obtain ⟨w0, vs1, rfl, hw0, hvs1⟩ := evs_cons_inv hvs
  obtain ⟨w1, vs2, rfl, hw1, hvs2⟩ := evs_cons_inv hvs1
  obtain ⟨w2, vs3, rfl, hw2, -⟩ := evs_cons_inv hvs2
  rw [h1] at hw0; rw [h2] at hw1; rw [h3] at hw2
  cases hw0; cases hw1; cases hw2
  exact ⟨vs3, rfl⟩


theorem resRxV_zero {Γ : Gam} {vs' : List (ValueHOL 64)} :
    ResRxV Γ (.rStruct (.val (.word (BitVec.ofNat 64 0)) :: vs')) := by
  intro r0 r1 r2 r3 hv h0
  simp only [ValueHOL.rStruct.injEq, List.cons.injEq, ValueHOL.val.injEq,
    HolWordLab.word.injEq] at hv
  exact absurd hv.1.symm h0

theorem w3_of_sh_v {v : ValueHOL 64} (h : shapeEqHOL (shapeOfHOLExact v) Spec.Mpt.Dec.sh3 = true) :
    ∃ c0 c1 c2 : BitVec 64, v = .rStruct [.val (.word c0), .val (.word c1), .val (.word c2)] := by
  obtain ⟨ws, hl, rfl⟩ := Spec.eq_wv_of_shapeEq' (k := 3) h
  match ws, hl with
  | [c0, c1, c2], _ => exact ⟨c0, c1, c2, rfl⟩

/-- The statement post of `_resolve_step`. -/
abbrev RvR (a : Act σ) : Gam → Ptrs → Mem → ValueHOL 64 → Prop :=
  fun Γ' p' _ v => RetOK Γ' a.p0 p' a.vs a.sg.ret v ∧ ResRx a.vs Γ' v ∧ ResRxV Γ' v

theorem sumSpecA_resolve_step_V :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "_resolve_step") rsSig
      RsPre (fun _ _ _ _ => False)
      (fun vs s Γ r t Γ' => ScrOld Γ Γ' ∧ ∀ v, r = .returned v → ∀ p0 p', ptrsOf s = some p0 →
        ptrsOf t = some p' → ResRx vs Γ' v ∧ ResRxV Γ' v) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hX := hF.hX
  refine sumSpecA_of_gp (Rx := fun vs _ Γ' _ _ v => ResRx vs Γ' v ∧ ResRxV Γ' v)
    hF.hH hF.hC hF.hal hF.hAC hF.hNS ?_
  intro vs body callee rs hl s0 _ hloc Γ0 p0 hpre ha hh
  rw [hX] at hl
  obtain ⟨rfl, -, A, B, C, rfl, -, -, -, hA, hB, hC'⟩ :=
    Spec.lookupCode_three code_resolve_step (by decide) (by decide) (by decide) hl
  obtain ⟨DB, P, N, hvs, hND, hVP⟩ := hpre
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl, rfl⟩ := hvs
  set a := actOf Types.guestC (Hooks.guestHooksR (σ := σ)) rsSig [] [.val (.word DB), .val (.word P), .val (.word N)] s0 Γ0 p0 with hadef
  have haC : a.C = Types.guestC := rfl
  have haCb : a.Cb = Types.guestC := rfl
  have hL0 : LRs DB P N s0.locals := by
    rw [hloc]; exact ⟨hA, hB, hC'⟩
  refine hoareG_conseq (P := GI a (LRs DB P N) (ERs DB P N))
    (Q := GP a (fun _ => False) (fun _ _ _ => True) (RvR a)) ?_ ?_ ?_
  rotate_left
  · intro t _ ht
    subst ht
    exact ⟨hL0, Γ0, p0, ext_refl _, hh, scrOld_refl _, hND, hVP⟩
  · intro r t _ _ h
    exact gp_final h
  have hfail : ∀ k : Nat, HoareG σ guestCtx (GI a (LRs DB P N) (ERs DB P N))
      (Spec.callD (nm "mpt_fail") [cw k]) (GP a (LRs DB P N) (ERs DB P N) (RvR a)) :=
    fun k => gp_call ha (sumA_of_csumm mptFail_R) (funSpec_true _) (by simp) (by simp)
      (fun s Γ q _ _ _ _ vs hvs => ⟨(anyArgsG (by simp) rfl hvs).1,
        fun x hx => argCells_any (by simp) hx, fun _ => trivial⟩)
      (fun s st vs callee r Γ Γ' q q' _ _ _ _ hE _ _ co =>
        ⟨scrOld_nf0_co haC co rfl, fun _ => ers_co haC haCb co hE⟩)
  unfold rsBody
  refine gp_dec ha.hH (L1 := LRs DB P N) (L2 := fun _ => False) (fun s _ hL v _ =>
    lrs_set (st := s) hL (by decide) (by decide) (by decide) v) ?_
    (fun m0 m hL hL2 => hL2.elim)
  refine gp_dec ha.hH (L1 := LRs DB P N) (L2 := fun _ => False) (fun s _ hL v _ =>
    lrs_set (st := s) hL (by decide) (by decide) (by decide) v) ?_
    (fun m0 m hL hL2 => hL2.elim)
  refine gp_seq (L := LRs DB P N) (E := ERs DB P N) ?_ ?_
  · unfold rsCall
    exact gp_try ha (sumA_of_csumm rlpItem_R) (funSpec_true _) (by simp) (by simp) (by decide)
      (Lh := LRs DB P N) (Eh := ERs DB P N)
      (fun s Γ q _ _ _ _ vs hvs => ⟨(anyArgsG (by simp) rfl hvs).1,
        fun x hx => argCells_any (by simp) hx, fun _ => trivial⟩)
      (fun s st vs callee r Γ Γ' q q' _ hL _ _ hE _ _ co =>
        ⟨scrOld_nf0_co haC co rfl, fun v _ => ⟨ers_co haC haCb co hE, fun _ =>
          lrs_set hL (by decide) (by decide) (by decide) v⟩, fun v _ => ⟨ers_co haC haCb co hE,
          lrs_set hL (by decide) (by decide) (by decide) v⟩⟩)
      (hfail 3)
  refine gp_seq (L := LRs DB P N) (E := ERs DB P N) ?_ ?_
  rotate_left
  · refine gp_ret ha.hH (fun s Γ q _ hL _ _ hE v hv => ?_)
    rw [ev_rstruct (evs_cons (ev_cw _ 1) (evs_cons (ev_lw hL.2.1) (evs_cons (ev_lw hL.2.2)
      (evs_cons (ev_cw _ 0) evs_nil))))] at hv
    cases hv
    refine ⟨retOK_nil, resRx_one, fun r0 r1 r2 r3 hv' _ => ?_⟩
    simp only [ValueHOL.rStruct.injEq, List.cons.injEq, ValueHOL.val.injEq,
      HolWordLab.word.injEq] at hv'
    obtain ⟨-, rfl, rfl, -⟩ := hv'
    exact hE.2
  refine hoareG_ite ?_ (gp_skip fun s h => h.1)
  refine hoareG_pre (P := GI a (LRs DB P N) (ERs DB P N)) ?_ (fun s _ h => h.1)
  unfold rsStr
  refine gp_seq (L := LRs DB P N) (E := ERs DB P N) ?_ ?_
  · refine hoareG_ite ?_ (gp_skip fun s h => h.1)
    refine hoareG_pre (gp_ret ha.hH (fun s Γ q _ _ _ _ _ v hv => ?_)) (fun s _ h => h.1)
    obtain ⟨vs', rfl⟩ := ev_rstruct_hd2 hv (ev_cw s 0) (ev_cw s 0)
    refine ⟨retOK_nil, ?_, resRxV_zero⟩
    intro r0 r1 r2 r3 hv' _
    simp only [ValueHOL.rStruct.injEq, List.cons.injEq, ValueHOL.val.injEq,
      HolWordLab.word.injEq] at hv'
    rw [← hv'.2.1]
    exact Or.inl (by simp [nullMax])
  refine gp_seq (L := LRs DB P N) (E := ERs DB P N) ?_ ?_
  · exact hoareG_ite (hoareG_pre (hfail 10) fun s _ h => h.1) (gp_skip fun s h => h.1)
  refine gp_decCall ha (sumA_of_csumm nodedbLookup_R) (funSpec_nodedb_lookup_leaf hX) (by simp) (by simp)
    (L1 := fun v m => (∃ c0 c1 c2 : BitVec 64, v = .rStruct [.val (.word c0), .val (.word c1), .val (.word c2)]) ∧
      LRs DB P N m ∧ m.lookup (nm "r") = some v)
    (E1 := fun v Γ q M => ERs DB P N Γ q M ∧ ∀ a b c : BitVec 64,
      v = .rStruct [.val (.word a), .val (.word b), .val (.word c)] → Hooks.VInR Types.tVAL Γ b c)
    (L2 := fun _ => False)
    (fun s Γ q _ _ _ _ vs hvs => ⟨(anyArgsG (by simp) rfl hvs).1,
      fun x hx => argCells_any (by simp) hx, fun _ => trivial⟩)
    (fun s st vs callee r Γ Γ' q q' _ hL hvs _ hE hLc _ co => ⟨scrOld_nf0_co haC co rfl,
      fun v hv _ => ⟨ers_co haC haCb co hE, fun a b c hvv => ?_⟩⟩)
    (fun s st v hL hsh => ⟨w3_of_sh_v hsh, lrs_set hL (by decide) (by decide) (by decide) v,
      by simp [setVarHOLFinite, FUPDATE]⟩)
    ?_ (fun _ _ _ h => h.elim)
  · obtain ⟨v1, vs1, rfl, h1, hvs1⟩ := evs_cons_inv hvs
    obtain ⟨v2, vs2, rfl, h2, hvs2⟩ := evs_cons_inv hvs1
    rw [evs_nil] at hvs2
    cases hvs2
    rw [ev_lv] at h1
    rw [hL.1] at h1
    cases h1
    have hNL := hLc _ hv DB v2 rfl
    exact Hooks.vInR_ext co.ext (vin_of_lookup hE.1 hNL hvv)
  intro v
  by_cases h3 : ∃ c0 c1 c2 : BitVec 64, v = .rStruct [.val (.word c0), .val (.word c1), .val (.word c2)]
  swap
  · exact hoareG_false fun s _ h => h3 h.1.1
  obtain ⟨c0, c1, c2, rfl⟩ := h3
  unfold rsNode
  refine gp_seq (L := fun m => (∃ d0 d1 d2 : BitVec 64, ValueHOL.rStruct [.val (.word c0), .val (.word c1), .val (.word c2)] =
      .rStruct [.val (.word d0), .val (.word d1), .val (.word d2)]) ∧ LRs DB P N m ∧
      m.lookup (nm "r") = some (.rStruct [.val (.word c0), .val (.word c1), .val (.word c2)]))
    (E := fun Γ q M => ERs DB P N Γ q M ∧ ∀ a b c : BitVec 64,
      ValueHOL.rStruct [.val (.word c0), .val (.word c1), .val (.word c2)] =
        .rStruct [.val (.word a), .val (.word b), .val (.word c)] → Hooks.VInR Types.tVAL Γ b c) ?_ ?_
  rotate_left
  · refine gp_ret ha.hH (fun s Γ q _ hL _ _ hE v' hv' => ?_)
    obtain ⟨vs', rfl⟩ := ev_rstruct_hd3 hv' (ev_cw s 1)
      (Spec.Mpt.Dec.ev_rfield_w (i := 1) hL.2.2 rfl) (Spec.Mpt.Dec.ev_rfield_w (i := 2) hL.2.2 rfl)
    refine ⟨retOK_nil, resRx_one, fun r0 r1 r2 r3 hv'' _ => ?_⟩
    simp only [ValueHOL.rStruct.injEq, List.cons.injEq, ValueHOL.val.injEq,
      HolWordLab.word.injEq] at hv''
    obtain ⟨-, rfl, rfl, -⟩ := hv''
    exact hE.2 c0 c1 c2 rfl
  refine hoareG_ite ?_ (gp_skip fun s h => h.1)
  refine hoareG_pre (P := GI a _ _) ?_ (fun s _ h => h.1)
  refine gp_decCall ha nodeNewHashed_spec_R (ctor_sp hX ctor_hashed_sp) (by simp [Node.nhSig])
    (fun _ => rfl)
    (L1 := fun v m => m.lookup (nm "hn") = some v)
    (E1 := fun v Γ _ _ => ∀ w, v = .val (.word w) → Fits Γ Types.nodeU w)
    (L2 := fun _ => False)
    (fun s Γ q _ _ _ _ vs hvs => ⟨(anyArgsG (by simp [Node.nhSig]) rfl hvs).1,
      fun x hx => argCells_any (by simp [Node.nhSig]) hx, fun _ => trivial⟩)
    (fun s st vs callee r Γ Γ' q q' _ _ _ _ _ hLc _ co => ⟨scrOld_sp_co haC co hLc,
      fun v hv _ w hw => by subst hw; exact co.ret _ hv 0 _ w rfl (by simp [flattenHOL])⟩)
    (fun s st v _ _ => by simp [setVarHOLFinite, FUPDATE]) ?_ (fun _ _ _ h => h.elim)
  intro v1
  refine gp_ret ha.hH (fun s Γ q _ hL _ _ hE v hv => ?_)
  obtain ⟨vs', rfl⟩ := ev_rstruct_hd2 hv (ev_cw s 0) (by rw [ev_lv]; exact hL)
  refine ⟨retOK_nil, ?_, resRxV_zero⟩
  intro r0 r1 r2 r3 hv' _
  simp only [ValueHOL.rStruct.injEq, List.cons.injEq] at hv'
  exact hE r1 hv'.2.1

end InitECandidate.Solver.MemSafe.Dn

#print axioms InitECandidate.Solver.MemSafe.Dn.sumSpecA_resolve_step_V
