import InitECandidate.Solver.MemSafe.Ra.Put
import InitECandidate.Solver.MemSafe.Ra.Body

set_option autoImplicit false

/-!
# Locals bookkeeping and two more rules for `recover_authority` (sonnet-ra)

* `LK kv m`: the locals `m` bind every `(x, v)` of `kv`; `lk_upd_gen` moves from one list to
  another after assigning `x` (macro `ra_rest` discharges the side condition);
* `EB a Mk B Γ q`: the window `Mk` is sound and the block `[B, B + 128)` is owned;
* `gp_decPure`: `var x = f(args); k` for a pure all-`any` callee;
* `gp_decW`: `var x = e; k` for a word, with access to the heap facts;
* `gp_assignE`: `x = e;` with access to the heap facts.
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

set_option hygiene false in
/-- Discharge the "everything else is unchanged" side condition of `lk_upd_gen`. -/
macro "ra_rest " "[" ids:Lean.Parser.Tactic.simpLemma,* "]" : tactic =>
  `(tactic| (intro p hp hne; simp only [$ids,*, List.mem_cons, List.not_mem_nil, or_false] at hp; rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> first | exact absurd rfl hne | exact ⟨by dsimp only; decide, by simp [$ids,*]⟩))

set_option hygiene false in
/-- Membership of a pair in a list. -/
macro "ra_mem " "[" ids:Lean.Parser.Tactic.simpLemma,* "]" : tactic =>
  `(tactic| simp [$ids,*])

namespace InitECandidate.Solver.MemSafe.Ra
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins

variable {σ : Type} {X : Ctx 64}

def LK (kv : List (MlS × ValueHOL 64)) (m : LocalsH) : Prop := ∀ p ∈ kv, m.lookup p.1 = some p.2

theorem lk_upd_gen {kv kv' : List (MlS × ValueHOL 64)} {s : State σ} {x : MlS} {v : ValueHOL 64}
    (h : LK kv s.locals) (hx : (x, v) ∈ kv')
    (hrest : ∀ p ∈ kv', p ≠ (x, v) → p.1 ≠ x ∧ p ∈ kv) :
    LK kv' (setVarHOLFinite x v s).locals := by
  intro p hp
  by_cases hpx : p = (x, v)
  · subst hpx; simp [setVarHOLFinite, FUPDATE]
  · obtain ⟨hne, hm⟩ := hrest p hp hpx
    exact lk_keep (fun h' => hne h') (h p hm)

theorem lk_irr {kv : List (MlS × ValueHOL 64)} {s : State σ} (h : LK kv s.locals) {x : MlS}
    (hx : ∀ p ∈ kv, p.1 ≠ x) (v : ValueHOL 64) : LK kv (setVarHOLFinite x v s).locals :=
  fun p hp => lk_keep (hx p hp) (h p hp)

theorem lk_mono {kv kv' : List (MlS × ValueHOL 64)} {m : LocalsH} (h : LK kv m)
    (hs : ∀ p ∈ kv', p ∈ kv) : LK kv' m := fun p hp => h p (hs p hp)

theorem lk_ev {kv : List (MlS × ValueHOL 64)} {s : State σ} (h : LK kv s.locals) {x : MlS}
    {v : ValueHOL 64} (hx : (x, v) ∈ kv) : ev s (lv x) = some v := Struct.ev_lw' (h _ hx)

theorem lk_ev_w {kv : List (MlS × ValueHOL 64)} {s : State σ} (h : LK kv s.locals) {x : MlS}
    {w : BitVec 64} (hx : (x, (.val (.word w) : ValueHOL 64)) ∈ kv) :
    ev s (lv x) = some (.val (.word w)) := Struct.ev_lw' (h _ hx)

/-- The window `Mk` is sound and the block `[B, B + 128)` is owned (and ends below `scratchEnd`). -/
def EB (a : Act σ) (Mk B : BitVec 64) (Γ : Gam) (q : Ptrs) : Prop :=
  Win a Mk Γ q ∧ Own a.p0 q Γ B.toNat 128 ∧ B.toNat + 128 ≤ scratchEnd

theorem eb_cof {a : Act σ} (haC : a.C = Types.guestC) {sg' : Sig} {vs : List (ValueHOL 64)}
    {Γ Γ' : Gam} {q q' : Ptrs} {s st : State σ} {r : PanSemResultExact 64} {Mk B : BitVec 64}
    (co : COF a sg' vs Γ Γ' q q' s st r) (hg : sg'.grows = false) (h : EB a Mk B Γ q) :
    EB a Mk B Γ' q' := ⟨win_cof haC co hg h.1, own_cof co hg h.2.1, h.2.2⟩

section rules4
variable {a : Act σ} {L : LocalsH → Prop} {E : Gam → Ptrs → Mem → Prop}
  {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}

/-- **`var x = f(args); k`** for a pure callee (all parameters `any`, nothing written) with no
heap facts to carry. -/
theorem gp_decPure (ha : ActOK a X) (haC : a.C = Types.guestC) {rn f : MlS} {args : List (ExpHOL 64)}
    {sg' : Sig}
    (hf : SumSpecA σ X a.Cb a.H f sg' (fun _ _ _ => True) (fun _ _ _ _ => False)
      (fun _ _ _ _ _ _ => True))
    (hps : ∀ pt ∈ sg'.params, pt = .any) (hlen : sg'.params.length = args.length)
    (hgw : sg'.gw = []) (hg : sg'.grows = false)
    {L1 : BitVec 64 → LocalsH → Prop} {L2 L3 : LocalsH → Prop} {k : ProgHOL 64}
    (hL1 : ∀ (s st : State σ) (W : BitVec 64), L s.locals →
      L1 W (setVarHOLFinite rn (.val (.word W)) { st with locals := s.locals }).locals)
    (hk : ∀ W, HoareG σ X (GI a (L1 W) (fun _ _ _ => True)) k
      (GP a L2 (fun _ _ _ => True) Rv))
    (hres : ∀ m0 m : LocalsH, L m0 → L2 m → L3 (m.resVarEq (rn, m0.lookup rn))) :
    HoareG σ X (GI a L (fun _ _ _ => True)) (.decCall rn .one f args k)
      (GP a L3 (fun _ _ _ => True) Rv) := by
  refine gp_decCallW ha hf (funSpec_true _) (by simp [hgw]) (fun h => by simp [hg] at h)
    (L1 := L1) (E1 := fun _ _ _ _ => True) ?_ ?_ hL1 hk hres
  · intro s Γ q hs hL hh hE vs hvs
    have h := anyArgsG (a := a) (Γ := Γ) (q := q) hps hlen hvs
    exact ⟨h.1, fun x hx => absurd hx (h.2 x), fun _ => trivial⟩
  · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc hQ co
    exact ⟨scrOld_cof haC co hg, fun _ _ => trivial⟩

/-- **`var x = e; k`** for a word, with access to the heap facts. -/
theorem gp_decW (hH : HooksLawful a.C a.H) {x : MlS} {e : ExpHOL 64} {body : ProgHOL 64}
    {L1 : BitVec 64 → LocalsH → Prop} {E1 : BitVec 64 → Gam → Ptrs → Mem → Prop}
    {L2 L3 : LocalsH → Prop} {E2 : Gam → Ptrs → Mem → Prop}
    (h : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), InCtx s X → L s.locals → Heap a Γ q s →
      E Γ q s.memory → ∀ v, ev s e = some v → ∃ W : BitVec 64, v = .val (.word W) ∧
        L1 W (setVarHOLFinite x v s).locals ∧ E1 W Γ q s.memory)
    (hk : ∀ W, HoareG σ X (GI a (L1 W) (E1 W)) body (GP a L2 E2 Rv))
    (hres : ∀ m0 m : LocalsH, L m0 → L2 m → L3 (m.resVarEq (x, m0.lookup x))) :
    HoareG σ X (GI a L E) (.dec x .one e body) (GP a L3 E2 Rv) := by
  refine hoareG_dec fun s hs ⟨hL, Γ, q, he, hh, hsc, hEs⟩ v hv _ => ?_
  obtain ⟨W, rfl, hL1, hE1⟩ := h s Γ q hs hL hh hEs v hv
  refine hoareG_conseq (hk W) (fun t _ ht => ?_) (fun r t _ _ hq => ?_)
  · subst ht
    exact ⟨hL1, Γ, q, he, heap_congr (s := s) hH rfl rfl rfl rfl hh, hsc, hE1⟩
  · refine ⟨fun hr => ?_, fun r' hr' => gx_locals hH _ (hq.2 r' hr')⟩
    have hg := hq.1 hr
    exact gi_locals hH _ (hres s.locals t.locals hL hg.1) hg

/-- **`x = e;`** with access to the heap facts. -/
theorem gp_assignE (hH : HooksLawful a.C a.H) {x : MlS} {e : ExpHOL 64} {L' : LocalsH → Prop}
    (h : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), InCtx s X → L s.locals → Heap a Γ q s →
      E Γ q s.memory → ∀ v, ev s e = some v → L' (setVarHOLFinite x v s).locals) :
    HoareG σ X (GI a L E) (.assign .local x e) (GP a L' E Rv) :=
  hoareG_assign fun s hs ⟨hL, Γ, q, he, hh, hsc, hEs⟩ v hv _ =>
    ⟨fun _ => ⟨h s Γ q hs hL hh hEs v hv, Γ, q, he, heap_congr (s := s) hH rfl rfl rfl rfl hh, hsc,
      hEs⟩, fun r' h => by cases h⟩

end rules4

end InitECandidate.Solver.MemSafe.Ra

#print axioms InitECandidate.Solver.MemSafe.Ra.gp_decPure
#print axioms InitECandidate.Solver.MemSafe.Ra.gp_decW
#print axioms InitECandidate.Solver.MemSafe.Ra.gp_assignE
