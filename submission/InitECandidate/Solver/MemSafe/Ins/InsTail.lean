import InitECandidate.Solver.MemSafe.Ins.InsFn

set_option autoImplicit false

/-!
# `_mpt_insert_node`: the middle state and the tail

`Mid`: after the ladder, the locals `r`, `next_node`, `next_slot`, `next_level` hold `R`, `NN`, `NS`, `NL`
with `Γ`-level facts `MidF`. `iTail_G`: the tail (`if slot == 0 { result = r } else { st slot, r };
node = next_node; slot = next_slot; level = next_level`) restores `JI`.
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

def kvT (K KL VP VL Nd Lv Res Sl G R NN NS NL : BitVec 64) : List (MlS × BitVec 64) :=
  [(nm "r", R), (nm "next_node", NN), (nm "next_slot", NS), (nm "next_level", NL)] ++
    kvJ K KL VP VL Nd Lv Res Sl G

def MidF (K KL Nd Lv Res Sl R NN NS NL : BitVec 64) (Γ : Gam) : Prop :=
  Inv0 K KL Nd Lv Res Sl Γ ∧ Rt Γ R ∧ Fits Γ Types.nodeU NN ∧ (NS = 0 ∨ SlotOK Γ NS) ∧
    NL.toNat ≤ KL.toNat

theorem midF_ext {K KL Nd Lv Res Sl R NN NS NL : BitVec 64} {Γ Γ' : Gam} (he : Ext Γ Γ')
    (h : MidF K KL Nd Lv Res Sl R NN NS NL Γ) : MidF K KL Nd Lv Res Sl R NN NS NL Γ' := by
  obtain ⟨h0, h1, h2, h3, h4⟩ := h
  refine ⟨inv0_ext he h0, ?_, fits_ext he h2, ?_, h4⟩
  · have := inv0_ext (K := K) (KL := KL) (Nd := Nd) (Lv := Lv) (Res := R) (Sl := Sl) he
      ⟨h0.1, h0.2.1, h1, h0.2.2.2.1, h0.2.2.2.2⟩
    exact this.2.2.1
  · have := inv0_ext (K := K) (KL := KL) (Nd := Nd) (Lv := Lv) (Res := Res) (Sl := NS) he
      ⟨h0.1, h3, h0.2.2.1, h0.2.2.2.1, h0.2.2.2.2⟩
    exact this.2.1

def Mid (a : Act σ) (K KL VP VL : BitVec 64) (t : State σ) : Prop :=
  ∃ Nd Lv Res Sl G R NN NS NL : BitVec 64, GI a (LKV (kvT K KL VP VL Nd Lv Res Sl G R NN NS NL))
    (fun Γ _ _ => MidF K KL Nd Lv Res Sl R NN NS NL Γ) t

theorem lkv_upd_gen {kv kv' : List (MlS × BitVec 64)} {s : State σ} {x : MlS} {w : BitVec 64}
    (h : LKV kv s.locals) (hx : (x, w) ∈ kv')
    (hrest : ∀ p ∈ kv', p ≠ (x, w) → p.1 ≠ x ∧ p ∈ kv) :
    LKV kv' (setVarHOLFinite x (.val (.word w)) s).locals := by
  intro p hp
  by_cases hpx : p = (x, w)
  · subst hpx; simp [setVarHOLFinite, FUPDATE]
  · obtain ⟨hne, hm⟩ := hrest p hp hpx
    exact lk_keep (fun h' => hne h') (h p hm)

theorem lkvT_res {K KL VP VL Nd Lv Res Sl G R NN NS NL W : BitVec 64} {s : State σ}
    (h : LKV (kvT K KL VP VL Nd Lv Res Sl G R NN NS NL) s.locals) :
    LKV (kvT K KL VP VL Nd Lv W Sl G R NN NS NL) (setVarHOLFinite (nm "result") (.val (.word W)) s).locals := by
  refine lkv_upd_gen h (by simp [kvT, kvJ]) ?_
  intro p hp hne
  simp only [kvT, kvJ, List.cons_append, List.nil_append, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
    first | exact absurd rfl hne | exact ⟨by dsimp only; decide, by simp [kvT, kvJ]⟩

theorem lkvT_node {K KL VP VL Nd Lv Res Sl G R NN NS NL W : BitVec 64} {s : State σ}
    (h : LKV (kvT K KL VP VL Nd Lv Res Sl G R NN NS NL) s.locals) :
    LKV (kvT K KL VP VL W Lv Res Sl G R NN NS NL) (setVarHOLFinite (nm "node") (.val (.word W)) s).locals := by
  refine lkv_upd_gen h (by simp [kvT, kvJ]) ?_
  intro p hp hne
  simp only [kvT, kvJ, List.cons_append, List.nil_append, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
    first | exact absurd rfl hne | exact ⟨by dsimp only; decide, by simp [kvT, kvJ]⟩

theorem lkvT_slot {K KL VP VL Nd Lv Res Sl G R NN NS NL W : BitVec 64} {s : State σ}
    (h : LKV (kvT K KL VP VL Nd Lv Res Sl G R NN NS NL) s.locals) :
    LKV (kvT K KL VP VL Nd Lv Res W G R NN NS NL) (setVarHOLFinite (nm "slot") (.val (.word W)) s).locals := by
  refine lkv_upd_gen h (by simp [kvT, kvJ]) ?_
  intro p hp hne
  simp only [kvT, kvJ, List.cons_append, List.nil_append, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
    first | exact absurd rfl hne | exact ⟨by dsimp only; decide, by simp [kvT, kvJ]⟩

theorem lkvT_level {K KL VP VL Nd Lv Res Sl G R NN NS NL W : BitVec 64} {s : State σ}
    (h : LKV (kvT K KL VP VL Nd Lv Res Sl G R NN NS NL) s.locals) :
    LKV (kvT K KL VP VL Nd W Res Sl G R NN NS NL) (setVarHOLFinite (nm "level") (.val (.word W)) s).locals := by
  refine lkv_upd_gen h (by simp [kvT, kvJ]) ?_
  intro p hp hne
  simp only [kvT, kvJ, List.cons_append, List.nil_append, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
    first | exact absurd rfl hne | exact ⟨by dsimp only; decide, by simp [kvT, kvJ]⟩

theorem lkvT_go {K KL VP VL Nd Lv Res Sl G R NN NS NL W : BitVec 64} {s : State σ}
    (h : LKV (kvT K KL VP VL Nd Lv Res Sl G R NN NS NL) s.locals) :
    LKV (kvT K KL VP VL Nd Lv Res Sl W R NN NS NL) (setVarHOLFinite (nm "go") (.val (.word W)) s).locals := by
  refine lkv_upd_gen h (by simp [kvT, kvJ]) ?_
  intro p hp hne
  simp only [kvT, kvJ, List.cons_append, List.nil_append, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
    first | exact absurd rfl hne | exact ⟨by dsimp only; decide, by simp [kvT, kvJ]⟩

set_option maxHeartbeats 4000000 in
theorem lkvT_r {K KL VP VL Nd Lv Res Sl G R NN NS NL W : BitVec 64} {s : State σ}
    (h : LKV (kvT K KL VP VL Nd Lv Res Sl G R NN NS NL) s.locals) :
    LKV (kvT K KL VP VL Nd Lv Res Sl G W NN NS NL) (setVarHOLFinite (nm "r") (.val (.word W)) s).locals := by
  refine lkv_upd_gen h (by simp [kvT, kvJ]) ?_
  intro p hp hne
  simp only [kvT, kvJ, List.cons_append, List.nil_append, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
    first | exact absurd rfl hne | exact ⟨by dsimp only; decide, by simp [kvT, kvJ]⟩

set_option maxHeartbeats 4000000 in
theorem lkvT_nn {K KL VP VL Nd Lv Res Sl G R NN NS NL W : BitVec 64} {s : State σ}
    (h : LKV (kvT K KL VP VL Nd Lv Res Sl G R NN NS NL) s.locals) :
    LKV (kvT K KL VP VL Nd Lv Res Sl G R W NS NL) (setVarHOLFinite (nm "next_node") (.val (.word W)) s).locals := by
  refine lkv_upd_gen h (by simp [kvT, kvJ]) ?_
  intro p hp hne
  simp only [kvT, kvJ, List.cons_append, List.nil_append, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
    first | exact absurd rfl hne | exact ⟨by dsimp only; decide, by simp [kvT, kvJ]⟩

set_option maxHeartbeats 4000000 in
theorem lkvT_ns {K KL VP VL Nd Lv Res Sl G R NN NS NL W : BitVec 64} {s : State σ}
    (h : LKV (kvT K KL VP VL Nd Lv Res Sl G R NN NS NL) s.locals) :
    LKV (kvT K KL VP VL Nd Lv Res Sl G R NN W NL) (setVarHOLFinite (nm "next_slot") (.val (.word W)) s).locals := by
  refine lkv_upd_gen h (by simp [kvT, kvJ]) ?_
  intro p hp hne
  simp only [kvT, kvJ, List.cons_append, List.nil_append, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
    first | exact absurd rfl hne | exact ⟨by dsimp only; decide, by simp [kvT, kvJ]⟩

set_option maxHeartbeats 4000000 in
theorem lkvT_nl {K KL VP VL Nd Lv Res Sl G R NN NS NL W : BitVec 64} {s : State σ}
    (h : LKV (kvT K KL VP VL Nd Lv Res Sl G R NN NS NL) s.locals) :
    LKV (kvT K KL VP VL Nd Lv Res Sl G R NN NS W) (setVarHOLFinite (nm "next_level") (.val (.word W)) s).locals := by
  refine lkv_upd_gen h (by simp [kvT, kvJ]) ?_
  intro p hp hne
  simp only [kvT, kvJ, List.cons_append, List.nil_append, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
    first | exact absurd rfl hne | exact ⟨by dsimp only; decide, by simp [kvT, kvJ]⟩

theorem ji_of_mid {a : Act σ} {K KL VP VL Nd Lv Res Sl G R NN NS NL : BitVec 64} {t : State σ}
    (h : GI a (LKV (kvT K KL VP VL Nd Lv Res Sl G R NN NS NL))
      (fun Γ _ _ => MidF K KL Nd Lv Res Sl R NN NS NL Γ) t) :
    JI a K KL VP VL t := by
  obtain ⟨hL, Γ, q, he, hh, hsc, hE⟩ := h
  refine ⟨G, Nd, Lv, Res, Sl, ?_, Γ, q, he, hh, hsc, hE.1⟩
  intro p hp
  apply hL
  simp only [kvJ, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> simp [kvT, kvJ]

theorem ji_of_mid2 {a : Act σ} {K KL VP VL Nd Lv Res Sl G R NN NS NL Res' : BitVec 64}
    {t : State σ}
    (hR : ∀ Γ, MidF K KL Nd Lv Res Sl R NN NS NL Γ → Rt Γ Res')
    (h : GI a (LKV (kvT K KL VP VL NN NL Res' NS G R NN NS NL))
      (fun Γ _ _ => MidF K KL Nd Lv Res Sl R NN NS NL Γ) t) :
    JI a K KL VP VL t := by
  obtain ⟨hL, Γ, q, he, hh, hsc, hE⟩ := h
  refine ⟨G, NN, NL, Res', NS, ?_, Γ, q, he, hh, hsc, hE.2.2.1, hE.2.2.2.1, hR Γ hE, hE.2.2.2.2,
    hE.1.2.2.2.2⟩
  intro p hp
  apply hL
  simp only [kvJ, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> simp [kvT, kvJ]

/-- The last three assignments of the tail. -/
theorem iTail2_G {a : Act σ} (ha : ActOK a guestCtx) {K KL VP VL Nd Lv Res Sl G R NN NS NL Res' : BitVec 64}
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (hR : ∀ Γ, MidF K KL Nd Lv Res Sl R NN NS NL Γ → Rt Γ Res') :
    HoareG σ guestCtx (GI a (LKV (kvT K KL VP VL Nd Lv Res' Sl G R NN NS NL))
        (fun Γ _ _ => MidF K KL Nd Lv Res Sl R NN NS NL Γ))
      (.seq (.assign .local (nm "node") (lv (nm "next_node")))
        (.seq (.assign .local (nm "slot") (lv (nm "next_slot"))) (.assign .local (nm "level") (lv (nm "next_level")))))
      (GPJ a (JI a K KL VP VL) Rv) := by
  refine gpj_of_gp (L := LKV (kvT K KL VP VL NN NL Res' NS G R NN NS NL))
    (E := fun Γ _ _ => MidF K KL Nd Lv Res Sl R NN NS NL Γ) ?_ (fun t h => ji_of_mid2 hR h)
  refine gp_seq (L := LKV (kvT K KL VP VL NN Lv Res' Sl G R NN NS NL))
    (E := fun Γ _ _ => MidF K KL Nd Lv Res Sl R NN NS NL Γ) ?_ ?_
  · refine gp_assign ha.hH (fun s hs hL v hv => ?_)
    have hm : (nm "next_node", NN) ∈ kvT K KL VP VL Nd Lv Res' Sl G R NN NS NL := by simp [kvT]
    have : v = .val (.word NN) := Option.some.inj (hv.symm.trans (ev_lw (hL _ hm)))
    subst this
    exact lkvT_node hL
  refine gp_seq (L := LKV (kvT K KL VP VL NN Lv Res' NS G R NN NS NL))
    (E := fun Γ _ _ => MidF K KL Nd Lv Res Sl R NN NS NL Γ) ?_ ?_
  · refine gp_assign ha.hH (fun s hs hL v hv => ?_)
    have hm : (nm "next_slot", NS) ∈ kvT K KL VP VL NN Lv Res' Sl G R NN NS NL := by simp [kvT]
    have : v = .val (.word NS) := Option.some.inj (hv.symm.trans (ev_lw (hL _ hm)))
    subst this
    exact lkvT_slot hL
  · refine gp_assign ha.hH (fun s hs hL v hv => ?_)
    have hm : (nm "next_level", NL) ∈ kvT K KL VP VL NN Lv Res' NS G R NN NS NL := by simp [kvT]
    have : v = .val (.word NL) := Option.some.inj (hv.symm.trans (ev_lw (hL _ hm)))
    subst this
    exact lkvT_level hL

theorem fits_of_rt {Γ : Gam} {w : BitVec 64} (h : Rt Γ w) : Fits Γ Types.nodeU w := by
  rcases h with h | ⟨o, ho, hb, ht⟩
  · subst h; left; simp [nullMax]
  · exact Or.inr ⟨o, ho, hb, ht⟩

/-- **The tail.** -/
theorem iTail_G {a : Act σ} (ha : ActOK a guestCtx) (hCb : a.Cb = Types.guestC) {K KL VP VL : BitVec 64} {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (Mid a K KL VP VL) iTail (GPJ a (JI a K KL VP VL) Rv) := by
  refine hoareG_ex fun Nd => hoareG_ex fun Lv => hoareG_ex fun Res => hoareG_ex fun Sl =>
    hoareG_ex fun G => hoareG_ex fun R => hoareG_ex fun NN => hoareG_ex fun NS => hoareG_ex fun NL => ?_
  have hmS : (nm "slot", Sl) ∈ kvT K KL VP VL Nd Lv Res Sl G R NN NS NL := by simp [kvT, kvJ]
  have hmR : (nm "r", R) ∈ kvT K KL VP VL Nd Lv Res Sl G R NN NS NL := by simp [kvT]
  unfold iTail
  by_cases hSl : Sl = 0
  · refine gp_seqJ (L := LKV (kvT K KL VP VL Nd Lv R Sl G R NN NS NL))
      (E := fun Γ _ _ => MidF K KL Nd Lv Res Sl R NN NS NL Γ) ?_ ?_
    · refine ite_val hmS (fun s h => h.1) (fun hc => ?_) (fun hc => ?_)
      · refine gp_assign ha.hH (fun s hs hL v hv => ?_)
        have : v = .val (.word R) := Option.some.inj (hv.symm.trans (ev_lw (hL _ hmR)))
        subst this
        exact lkvT_res hL
      · exfalso
        subst hSl
        simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] at hc
    · exact iTail2_G ha (fun Γ h => h.2.1)
  · refine gp_seqJ (L := LKV (kvT K KL VP VL Nd Lv Res Sl G R NN NS NL))
      (E := fun Γ _ _ => MidF K KL Nd Lv Res Sl R NN NS NL Γ) ?_ ?_
    · refine ite_val hmS (fun s h => h.1) (fun hc => ?_) (fun hc => ?_)
      · exfalso
        apply hSl
        simpa [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] using hc
      · refine gp_stWX ha (L := LKV (kvT K KL VP VL Nd Lv Res Sl G R NN NS NL))
          (E := fun Γ _ _ => MidF K KL Nd Lv Res Sl R NN NS NL Γ)
          (E' := fun Γ _ _ => MidF K KL Nd Lv Res Sl R NN NS NL Γ) (ea := lv (nm "slot"))
          (e := lv (nm "r"))
          (fun s v hL hv => ⟨R, by rw [ev_lw (hL _ hmR)] at hv; exact (Option.some.inj hv).symm⟩) ?_
          (fun s Γ q A V _ _ hE _ _ => hE)
        intro s Γ q A V hL hh hE hA hV
        rw [ev_lw (hL _ hmS)] at hA
        rw [ev_lw (hL _ hmR)] at hV
        simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hA hV
        subst hA hV
        rcases hE.1.2.1 with h0 | ⟨o, ho, j, hj, hs, hAc⟩
        · exact absurd h0 hSl
        · refine ⟨o, ho, j, hj, ?_, hAc, ?_⟩
          · rw [hCb, hs]; intro h; cases h
          · rw [hCb, hs]; exact fits_of_rt hE.2.1
    · exact iTail2_G ha (fun Γ h => h.1.2.2.1)

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.iTail_G
