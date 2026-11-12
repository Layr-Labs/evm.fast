import InitECandidate.Solver.MemSafe.Ins.DelDesc

set_option autoImplicit false

/-!
# Descent, the leaf case (tag 1)

```
res = node;
if ld(node + 40) == klen - level { var eq = memeq(ld(node + 32), key + level, klen - level);
                                    if eq != 0 { res = 0; } }
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

/-- The facts at the start of a tag case. -/
def DEK (a : Act σ) (K KL Nd Lv Res T K0 : BitVec 64) (Γ : Gam) (q : Ptrs) (M : Mem) : Prop :=
  DE a K KL Nd Lv Res T Γ q M ∧ NdT Γ Nd K0

theorem dek_call {a : Act σ} (haC : a.C = Types.guestC) (haCb : a.Cb = Types.guestC)
    (hL0 : Layout Types.guestC a.p0 a.Γ0) (hsp0 : a.p0.sp ≤ scratchEnd) {sg' : Sig}
    {vs : List (ValueHOL 64)} {Γ Γ' : Gam} {q q' : Ptrs} {s st : State σ}
    {r : PanSemResultExact 64} (co : CO a sg' vs Γ Γ' q q' s st r) (hsc : ScrOld a.Γ0 Γ)
    {K KL Nd Lv Res T K0 : BitVec 64} (h : DEK a K KL Nd Lv Res T K0 Γ q s.memory) :
    DEK a K KL Nd Lv Res T K0 Γ' q' st.memory :=
  ⟨de_call haC haCb hL0 hsp0 co hsc h.1, ndT_ext co.ext h.2⟩

/-- Close a case into `JD`: the final locals extend `kvD ... R' G T`, and `R'` is a node or null. -/
theorem jd_fin {a : Act σ} {K KL Nd Lv Res T K0 R' G : BitVec 64}
    {kv : List (MlS × BitVec 64)} (hk : ∀ p ∈ kvD K KL Nd Lv R' G T, p ∈ kv)
    (hR : ∀ Γ, NdT Γ Nd K0 → Rt Γ R') {t : State σ}
    (h : GI a (LKV kv) (fun Γ q M => DEK a K KL Nd Lv Res T K0 Γ q M) t) : JD a K KL t := by
  obtain ⟨hL, Γ, q, he, hh, hsc, hE⟩ := h
  exact ⟨G, Nd, Lv, R', T, fun p hp => hL p (hk p hp), Γ, q, he, hh, hsc, hE.1.1, hE.1.2.1,
    hE.1.2.2.1, hR Γ hE.2, hE.1.2.2.2.2⟩

theorem dlLeaf_G {vs : List (ValueHOL 64)}
    {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs} (ha : ActOK (aD vs s0 Γ0 p0) guestCtx)
    (hL0 : Layout Types.guestC p0 Γ0) (hsp0 : p0.sp ≤ scratchEnd)
    {K KL Nd Lv Res T K0 : BitVec 64} (hK0 : K0 = 1)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (GI (aD vs s0 Γ0 p0) (LKV ((nm "k", K0) :: kvD K KL Nd Lv Res 0 T))
        (fun Γ q M => DEK (aD vs s0 Γ0 p0) K KL Nd Lv Res T K0 Γ q M))
      dlLeaf (GPJ (aD vs s0 Γ0 p0) (JD (aD vs s0 Γ0 p0) K KL) Rv) := by
  have hX0 := (Rec.foldOK_guestR (σ := σ)).hX
  set a := aD vs s0 Γ0 p0 with hadef
  have haC : a.C = Types.guestC := rfl
  have hnodeM : (nm "node", Nd) ∈ ((nm "k", K0) :: kvD K KL Nd Lv Res 0 T) := by simp [kvD]
  have hRnd : ∀ Γ, NdT Γ Nd K0 → Rt Γ Nd := fun Γ h =>
    rt_of_obj (t := Types.tNLEAF) (by simp [Node.nodeTys]) (ndT_leaf h hK0)
  unfold dlLeaf
  -- `res = node`
  refine gp_seqJ (L := LKV ((nm "k", K0) :: kvD K KL Nd Lv Nd 0 T))
    (E := fun Γ q M => DEK a K KL Nd Lv Res T K0 Γ q M) ?_ ?_
  · refine gp_assign ha.hH (fun s hs hL v hv => ?_)
    have e : v = .val (.word Nd) := Option.some.inj (hv.symm.trans (ev_lw (hL _ hnodeM)))
    subst e
    exact lkv_upd_gen hL (by simp [kvD]) (by lkv_rest [kvD])
  have hfeq : ∀ p ∈ ((nm "k", K0) :: kvD K KL Nd Lv Nd 0 T), p.1 ≠ nm "eq" := by lkv_fresh [kvD]
  refine hoareG_ite ?_ ?_
  · refine hoareG_pre (P := GI a (LKV ((nm "k", K0) :: kvD K KL Nd Lv Nd 0 T))
      (fun Γ q M => DEK a K KL Nd Lv Res T K0 Γ q M)) ?_ (fun s _ h => h.1)
    refine gp_decCallJ ha (sumA_of_csumm memeq_R) (funSpec_true _) (by simp) (fun _ => rfl)
      (L1 := fun v m => LKV ((nm "k", K0) :: kvD K KL Nd Lv Nd 0 T) m ∧
        m.lookup (nm "eq") = some v ∧ ∃ EQ : BitVec 64, v = .val (.word EQ))
      (E1 := fun v Γ q M => DEK a K KL Nd Lv Res T K0 Γ q M)
      (fun s Γ q _ hL hh hE vs1 hvs => ⟨(anyArgsG (by simp) rfl hvs).1,
        fun x hx => argCells_any (by simp) hx, fun _ => trivial⟩)
      (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hsc hE hLc hQ co =>
        ⟨scrOld_nf0_co haC co rfl, fun v hv _ => dek_call haC rfl hL0 hsp0 co hsc hE⟩)
      (fun s st v hL hsh => ⟨lkv_set (s := { st with locals := s.locals }) hL hfeq v,
        by simp [setVarHOLFinite, FUPDATE], val_of_shapeEq_one' hsh⟩)
      ?_ (fun t o h => jd_res ha.hH (by simp) o h)
    intro v
    by_cases hw : ∃ EQ : BitVec 64, v = .val (.word EQ)
    swap
    · exact hoareG_false fun s _ h => hw h.1.2.2
    obtain ⟨EQ, rfl⟩ := hw
    refine hoareG_pre (P := GI a (LKV ((nm "eq", EQ) :: (nm "k", K0) :: kvD K KL Nd Lv Nd 0 T))
      (fun Γ q M => DEK a K KL Nd Lv Res T K0 Γ q M)) ?_
      (fun s _ ⟨⟨hL, hk, _⟩, rest⟩ => ⟨lkv_cons hL hk, rest⟩)
    refine ite_val (x := nm "eq") (W := EQ) (k := 0) (by simp) (fun s h => h.1) (fun hc => ?_)
      (fun hc => ?_)
    · refine gpj_of_gp (gp_assign ha.hH (L' := LKV ((nm "eq", EQ) :: (nm "k", K0) :: kvD K KL Nd Lv 0 0 T))
        (fun s hs hL v hv => ?_)) (fun t h => ?_)
      · have e : v = .val (.word 0) := by
          rw [ev_cw] at hv; exact (Option.some.inj hv).symm
        subst e
        exact lkv_upd_gen hL (by simp [kvD]) (by lkv_rest [kvD])
      · exact jd_fin (R' := 0) (G := 0) (K0 := K0) (Res := Res) (by kv_sub [kvD]) (fun Γ _ => Or.inl rfl) h
    · exact gpj_of_gp (gp_skip (fun s h => h)) (fun t h =>
        jd_fin (R' := Nd) (G := 0) (K0 := K0) (Res := Res) (by kv_sub [kvD]) hRnd h)
  · exact gpj_of_gp (gp_skip (fun s h => h.1)) (fun t h =>
      jd_fin (R' := Nd) (G := 0) (K0 := K0) (Res := Res) (by kv_sub [kvD]) hRnd h)

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.dlLeaf_G
