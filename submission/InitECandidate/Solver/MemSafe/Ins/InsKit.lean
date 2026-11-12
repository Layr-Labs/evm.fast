import InitECandidate.Solver.MemSafe.Ins.InsLeaf0

set_option autoImplicit false

/-!
# Kit for the ladder: `var x = e; k` with J-form post, and `Mid` is robust under restoring a local
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

theorem gp_decVJ {a : Act σ} {L : LocalsH → Prop} {E : Gam → Ptrs → Mem → Prop}
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} {Inv : State σ → Prop}
    (hH : HooksLawful a.C a.H) {x : MlS} {sh : ShapeHOL} {e : ExpHOL 64}
    {body : ProgHOL 64} {L1 : ValueHOL 64 → LocalsH → Prop}
    {E1 : ValueHOL 64 → Gam → Ptrs → Mem → Prop}
    (h : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v →
      L1 v (setVarHOLFinite x v s).locals)
    (hE : ∀ (s : State σ) Γ q, InCtx s X → L s.locals → Heap a Γ q s → E Γ q s.memory → ∀ v,
      ev s e = some v → E1 v Γ q s.memory)
    (hk : ∀ v, HoareG σ X (GI a (L1 v) (E1 v)) body (GPJ a Inv Rv))
    (hres : ∀ (t : State σ) (o : Option (ValueHOL 64)), Inv t →
      Inv { t with locals := t.locals.resVarEq (x, o) }) :
    HoareG σ X (GI a L E) (.dec x sh e body) (GPJ a Inv Rv) := by
  refine hoareG_dec fun s hs ⟨hL, Γ, q, he, hh, hsc, hEs⟩ v hv _ => ?_
  refine hoareG_conseq (hk v) (fun t _ ht => ?_) (fun r t _ _ hq => ?_)
  · subst ht
    exact ⟨h s hs hL v hv, Γ, q, he, heap_congr (s := s) hH rfl rfl rfl rfl hh, hsc,
      hE s Γ q hs hL hh hEs v hv⟩
  · exact ⟨fun hr => hres t _ (hq.1 hr), fun r' hr' => gx_locals hH _ (hq.2 r' hr')⟩

theorem lkv_res' {kv : List (MlS × BitVec 64)} {m : LocalsH} (h : LKV kv m) {x : MlS}
    (hx : ∀ p ∈ kv, p.1 ≠ x) (o : Option (ValueHOL 64)) : LKV kv (m.resVarEq (x, o)) := by
  intro p hp
  rw [lookup_resVarEq_ne _ _ (Ne.symm (hx p hp))]
  exact h p hp

theorem kvT_fresh {K KL VP VL Nd Lv Res Sl G R NN NS NL : BitVec 64} {x : MlS}
    (hx : x = nm "k" ∨ x = nm "seg" ∨ x = nm "sl" ∨ x = nm "pl" ∨ x = nm "br" ∨ x = nm "idx") :
    ∀ p ∈ kvT K KL VP VL Nd Lv Res Sl G R NN NS NL, p.1 ≠ x := by
  intro p hp
  simp only [kvT, kvJ, List.cons_append, List.nil_append, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hx with rfl | rfl | rfl | rfl | rfl | rfl <;>
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
    (dsimp only; decide)

theorem mid_res {a : Act σ} (hH : HooksLawful a.C a.H) {K KL VP VL : BitVec 64}
    {x : MlS}
    (hx : x = nm "k" ∨ x = nm "seg" ∨ x = nm "sl" ∨ x = nm "pl" ∨ x = nm "br" ∨ x = nm "idx")
    (o : Option (ValueHOL 64)) {t : State σ} (h : Mid a K KL VP VL t) :
    Mid a K KL VP VL { t with locals := t.locals.resVarEq (x, o) } := by
  obtain ⟨Nd, Lv, Res, Sl, G, R, NN, NS, NL, hI⟩ := h
  exact ⟨Nd, Lv, Res, Sl, G, R, NN, NS, NL,
    gi_locals hH _ (lkv_res' hI.1 (kvT_fresh hx) o) hI⟩

/-- `x = e;` with the assigned value visible to the memory facts (J-form post). -/
theorem gp_assignAV {a : Act σ} {L : LocalsH → Prop} {E : Gam → Ptrs → Mem → Prop}
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (hH : HooksLawful a.C a.H) {x : MlS} {e : ExpHOL 64}
    {L1 : ValueHOL 64 → LocalsH → Prop} {E1 : ValueHOL 64 → Gam → Ptrs → Mem → Prop}
    (h : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v →
      L1 v (setVarHOLFinite x v s).locals)
    (hE : ∀ (s : State σ) Γ q, InCtx s X → L s.locals → Heap a Γ q s → E Γ q s.memory → ∀ v,
      ev s e = some v → E1 v Γ q s.memory) :
    HoareG σ X (GI a L E) (.assign .local x e) (GPJ a (fun t => ∃ v, GI a (L1 v) (E1 v) t) Rv) :=
  hoareG_assign fun s hs ⟨hL, Γ, q, he, hh, hsc, hEs⟩ v hv _ =>
    ⟨fun _ => ⟨v, h s hs hL v hv, Γ, q, he, heap_congr (s := s) hH rfl rfl rfl rfl hh, hsc,
      hE s Γ q hs hL hh hEs v hv⟩, fun r' h => by cases h⟩

/-- The extension node's slice and child, from `G`. -/
theorem ext_facts {Γ : Gam} {s : State σ}
    (hG : G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ s) {N : BitVec 64}
    (hn : ∃ o ∈ Γ, o.base = N ∧ o.ty = Types.tNEXT) :
    NIn Γ (rd s.memory (N + 32)) (rd s.memory (N + 40)) ∧ Fits Γ Types.nodeU (rd s.memory (N + 48)) := by
  refine ⟨slice_of_node hG (by obtain ⟨o, ho, hb, ht⟩ := hn; exact ⟨o, ho, hb, Or.inr ht⟩), ?_⟩
  obtain ⟨o, ho, hb, ht⟩ := hn
  obtain ⟨p, hp, hord, hbase, hend, hcases⟩ := Band.node_facts hG ho
    (by simp [Band.nodeTys, ht])
  subst hb
  rcases hcases with ⟨h, -⟩ | ⟨h, -⟩ | ⟨h, -, -, hf⟩ | ⟨h, -⟩
  · exact absurd (h.symm.trans ht) (by decide)
  · exact absurd (h.symm.trans ht) (by decide)
  · exact hf
  · exact absurd (h.symm.trans ht) (by decide)

/-- A branch node's children fit `nodeU`. -/
theorem br_child_fits {Γ : Gam} {s : State σ} (hG : G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ s)
    {N : BitVec 64} (hn : ∃ o ∈ Γ, o.base = N ∧ o.ty = Types.tNBRANCH) {i : Nat} (hi : i < 16) :
    Fits Γ Types.nodeU (rd s.memory (N + BitVec.ofNat 64 (32 + 8 * i))) := by
  obtain ⟨o, ho, hb, ht⟩ := hn
  obtain ⟨p, hp, hord, hbase, hend, hcases⟩ := Band.node_facts hG ho
    (by simp [Band.nodeTys, ht])
  subst hb
  rcases hcases with ⟨h, -⟩ | ⟨h, -⟩ | ⟨h, -⟩ | ⟨h, -, -, hf⟩
  · exact absurd (h.symm.trans ht) (by decide)
  · exact absurd (h.symm.trans ht) (by decide)
  · exact absurd (h.symm.trans ht) (by decide)
  · exact hf i hi

theorem ite_val2 {P : State σ → Prop} {kv : List (MlS × BitVec 64)} {x y : MlS} {W W' : BitVec 64}
    {o : Cmp} {a b : ProgHOL 64} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hx : (x, W) ∈ kv) (hy : (y, W') ∈ kv) (hP : ∀ s, P s → LKV kv s.locals)
    (ha : Flapjack.Compiler.Encoders.Asm.wordCmpHOL o W W' = true → HoareG σ X P a Q)
    (hb : Flapjack.Compiler.Encoders.Asm.wordCmpHOL o W W' = false → HoareG σ X P b Q) :
    HoareG σ X P (.ite (.cmp o (lv x) (lv y)) a b) Q := by
  have hev : ∀ s, P s → ev s (.cmp o (lv x) (lv y)) = some (.val (.word
      (if Flapjack.Compiler.Encoders.Asm.wordCmpHOL o W W' then 1 else 0))) :=
    fun s hs => ev_cmp (ev_lw (hP s hs _ hx)) (ev_lw (hP s hs _ hy))
  refine hoareG_ite ?_ ?_
  · by_cases h : Flapjack.Compiler.Encoders.Asm.wordCmpHOL o W W' = true
    · exact hoareG_pre (ha h) (fun s _ h => h.1)
    · exact hoareG_false fun s _ ⟨hs, w, hw, hw0⟩ => by
        rw [hev s hs] at hw; simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
        subst hw; simp [h] at hw0
  · by_cases h : Flapjack.Compiler.Encoders.Asm.wordCmpHOL o W W' = true
    · exact hoareG_false fun s _ ⟨hs, hw⟩ => by
        rw [hev s hs] at hw; simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
        simp [h] at hw
    · exact hoareG_pre (hb (by simpa using h)) (fun s _ h => h.1)

end InitECandidate.Solver.MemSafe.Ins
