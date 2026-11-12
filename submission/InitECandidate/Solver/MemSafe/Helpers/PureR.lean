import InitECandidate.Solver.MemSafe.Helpers.PureF
import InitECandidate.Solver.MemSafe.Alloc

set_option autoImplicit false

/-!
# Read-only functions

`ROSpec σ X f`: every good result of `f` (exceptions included) keeps the memory and the
globals. `pureR fs p`: `p` is built from the `pureF` statements, `primitive`s, and calls (plain,
tail or `var x = f(..)`) of functions in `fs`. `hoareG_pureR`: if every function of `fs` is
read-only, such code keeps any footprint `BWPost Rf s0` and never ends with `break` or
`continue`. `roSpec_decl` reads the body from the guest AST (checked by `decide_cbv`).

Instances: `trap_with` (`roSpec_trap_with`), `udivmod`, `u256_lt`, `u256_add_carry`,
`mul64x64`, `u256_mul_full`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Helpers
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- Keeps memory and globals on every good result. -/
def ROSpec (σ : Type) (X : Ctx 64) (f : MlS) : Prop :=
  FunSpec σ X f (fun _ s r t => Good (some r) → t.globals = s.globals ∧ t.memory = s.memory)

theorem PureSpec.ro {f : MlS} (h : PureSpec σ X f) : ROSpec σ X f :=
  h.mono fun _ _ _ _ h hg => ⟨(h hg).1, (h hg).2.1⟩

theorem roSpec_trap_with (hC : X.code.lookup = guestCode) : ROSpec σ X (nm "trap_with") :=
  (funSpec_trap_with hC).mono fun _ _ _ _ h hg => ⟨(h hg).2.2, (h hg).2.1⟩

theorem noCB_of_abn {r : PanSemResultExact 64} (h : Abn r) : NoCB (some r) := by
  rcases h with ⟨e, w, rfl⟩ | ⟨e, rfl⟩ <;> simp [NoCB]

/-- A primitive assigns a local. -/
theorem hoareG_prim {P : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {x : MlS} {op : Flapjack.PrimOp} {es : List (ExpHOL 64)}
    (h : ∀ s, InCtx s X → P s → ∀ v, Q none (setVarHOLFinite x v s)) :
    HoareG σ X P (.primitive x op es) Q := by
  intro s hs hp
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.primitive x op es)]
  dsimp only
  split
  · intro hg; exact absurd hg (by simp [Good])
  · split
    · intro hg; exact absurd hg (by simp [Good])
    · split
      · intro _; exact h s hs hp _
      · intro hg; exact absurd hg (by simp [Good])

def pureR (fs : List MlS) : ProgHOL 64 → Bool
  | .skip => true
  | .assign .local _ _ => true
  | .primitive _ _ _ => true
  | .dec _ _ _ b => pureR fs b
  | .seq a b => pureR fs a && pureR fs b
  | .ite _ a b => pureR fs a && pureR fs b
  | .while _ b => pureR fs b
  | .return _ => true
  | .call none f _ => fs.contains f
  | .call (some (none, none)) f _ => fs.contains f
  | .decCall _ _ f _ k => fs.contains f && pureR fs k
  | _ => false

theorem bwPost_ro {Rf : BitVec 64 → Prop} {s0 s st : State σ} (hp : BWPost Rf s0 s)
    (hgl : st.globals = s.globals) (hm : st.memory = s.memory) : BWPost Rf s0 st :=
  ⟨hgl.trans hp.1, fun a ha => by rw [hm]; exact hp.2 a ha⟩

theorem hoareG_pureR {fs : List MlS} (hfs : ∀ f, fs.contains f = true → ROSpec σ X f)
    {Rf : BitVec 64 → Prop} {s0 : State σ} :
    ∀ p : ProgHOL 64, pureR fs p = true →
      HoareG σ X (fun t => BWPost Rf s0 t) p (fun r t => BWPost Rf s0 t ∧ NoCB r)
  | .skip, _ => hoareG_skip fun _ _ h => ⟨h, by simp [NoCB]⟩
  | .assign .local x e, _ => hoareG_assign fun _ _ h _ _ _ => ⟨h, by simp [NoCB]⟩
  | .assign .global _ _, h => by simp [pureR] at h
  | .primitive x op es, _ => hoareG_prim fun _ _ h _ => ⟨h, by simp [NoCB]⟩
  | .dec x sh e b, h => by
      simp only [pureR] at h
      refine hoareG_dec fun s _ hp v _ _ => ?_
      refine hoareG_conseq (hoareG_pureR hfs b h) (fun t _ ht => ?_) fun _ _ _ _ hq => hq
      subst ht
      exact hp
  | .seq a b, h => by
      simp only [pureR, Bool.and_eq_true] at h
      exact hoareG_seq (hoareG_pureR hfs a h.1) (fun _ _ _ _ _ hq => hq)
        (hoareG_pre (hoareG_pureR hfs b h.2) fun _ _ hq => hq.1)
  | .ite c a b, h => by
      simp only [pureR, Bool.and_eq_true] at h
      exact hoareG_ite (hoareG_pre (hoareG_pureR hfs a h.1) fun _ _ hq => hq.1)
        (hoareG_pre (hoareG_pureR hfs b h.2) fun _ _ hq => hq.1)
  | .while c b, h => by
      simp only [pureR] at h
      refine hoareG_while (fun _ h => h) ?_ (fun _ _ hi _ => ⟨hi, by simp [NoCB]⟩)
      refine hoareG_conseq (hoareG_pureR hfs b h) (fun _ _ hq => hq.1) ?_
      intro r t _ _ hq
      obtain ⟨hbw, hcb⟩ := hq
      exact ⟨fun _ => hbw, fun hr => absurd hr hcb.1, fun hr => absurd hr hcb.2,
        fun _ _ _ _ => ⟨hbw, hcb⟩⟩
  | .return e, _ => hoareG_return fun _ _ h v _ => ⟨h, by simp [NoCB]⟩
  | .call none f args, h => by
      simp only [pureR] at h
      refine hoareG_tailCall (hfs f h) ?_ ?_
      · intro s _ hp vs _ callee v st hR _
        obtain ⟨hgl, hm⟩ := hR (by simp [Good])
        exact ⟨bwPost_ro hp hgl hm, by simp [NoCB]⟩
      · intro s _ hp vs _ callee r st hR _ habn
        obtain ⟨hgl, hm⟩ := hR (abn_good habn)
        exact ⟨bwPost_ro hp hgl hm, noCB_of_abn habn⟩
  | .call (some (none, none)) f args, h => by
      simp only [pureR] at h
      refine hoareG_callD (hfs f h) ?_ ?_
      · intro s _ hp vs _ callee v st hR _
        obtain ⟨hgl, hm⟩ := hR (by simp [Good])
        exact ⟨bwPost_ro hp hgl hm, by simp [NoCB]⟩
      · intro s _ hp vs _ callee r st hR _ habn
        obtain ⟨hgl, hm⟩ := hR (abn_good habn)
        exact ⟨bwPost_ro hp hgl hm, noCB_of_abn habn⟩
  | .call (some (some _, _)) _ _, h => by simp [pureR] at h
  | .call (some (none, some _)) _ _, h => by simp [pureR] at h
  | .decCall rn sh f args k, h => by
      simp only [pureR, Bool.and_eq_true] at h
      refine hoareG_decCall (hfs f h.1) ?_ ?_
      · intro s _ hp vs _ callee v st hR _ _
        obtain ⟨hgl, hm⟩ := hR (by simp [Good])
        refine hoareG_conseq (hoareG_pureR hfs k h.2) (fun t _ ht => ?_) fun _ _ _ _ hq => hq
        subst ht
        exact bwPost_ro hp hgl hm
      · intro s _ hp vs _ callee r st hR _ habn
        obtain ⟨hgl, hm⟩ := hR (abn_good habn)
        exact ⟨bwPost_ro hp hgl hm, noCB_of_abn habn⟩
  | .store _ _, h => by simp [pureR] at h
  | .store32 _ _, h => by simp [pureR] at h
  | .storeByte _ _, h => by simp [pureR] at h
  | .break, h => by simp [pureR] at h
  | .continue, h => by simp [pureR] at h
  | .extCall _ _ _ _ _, h => by simp [pureR] at h
  | .raise _ _, h => by simp [pureR] at h
  | .shMemLoad _ _ _ _, h => by simp [pureR] at h
  | .shMemStore _ _ _, h => by simp [pureR] at h
  | .tick, h => by simp [pureR] at h
  | .annot _ _, h => by simp [pureR] at h

theorem roSpec_of {fs : List MlS} (hfs : ∀ f, fs.contains f = true → ROSpec σ X f) {f : MlS}
    {ps : List (MlS × ShapeHOL)} {bd : ProgHOL 64} {rsh : ShapeHOL}
    (hcode : X.code.lookup f = some (ps, bd, rsh)) (hp : pureR fs bd = true) :
    ROSpec σ X f := by
  intro vs body callee rs hl s hs _ r hr hg
  obtain ⟨ps', hc⟩ := lookupCode_some' hl
  rw [hcode] at hc
  obtain ⟨-, rfl, -⟩ := Prod.mk.inj (Option.some.inj hc)
  have := hoareG_pureR hfs (Rf := fun _ => False) (s0 := s) bd hp s hs ⟨rfl, fun _ _ => rfl⟩
    (by rw [hr]; exact hg)
  rw [hr] at this
  exact ⟨this.1.1, funext fun a => this.1.2 a id⟩

theorem roSpec_decl (hC : X.code.lookup = guestCode) {fs : List MlS}
    (hfs : ∀ f, fs.contains f = true → ROSpec σ X f) {d : Flapjack.Decl (BitVec 64)}
    (hd : d ∈ Guest.Software.guestAst) (hf : ∃ fd, d = .function fd)
    (hp : pureR fs (fnEntry d).2.2.1 = true) : ROSpec σ X (fnEntry d).1 :=
  roSpec_of hfs (by rw [hC]; exact entry_valid hd hf) hp

theorem noRO : ∀ f, ([] : List MlS).contains f = true → ROSpec σ X f := by
  intro f hf; simp at hf

theorem oneRO {g : MlS} (hg : ROSpec σ X g) : ∀ f, [g].contains f = true → ROSpec σ X f := by
  intro f hf
  simp only [List.contains_cons, List.contains_nil, Bool.or_false, beq_iff_eq] at hf
  subst hf
  exact hg

/-! ## Instances -/

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem pureR_udivmod :
    pureR [nm "trap_with"] (fnEntry Guest.Software.guestFn_udivmod).2.2.1 = true := by
  decide_cbv

theorem name_udivmod : (fnEntry Guest.Software.guestFn_udivmod).1 = nm "udivmod" := rfl

theorem roSpec_udivmod (hC : X.code.lookup = guestCode) : ROSpec σ X (nm "udivmod") :=
  name_udivmod ▸
    roSpec_decl hC (oneRO (roSpec_trap_with hC))
      (List.getElem_mem (l := Guest.Software.guestAst) (n := 33) (by decide)) ⟨_, rfl⟩
      pureR_udivmod

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem pureR_u256_lt : pureR [] (fnEntry Guest.Software.guestFn_u256_lt).2.2.1 = true := by
  decide_cbv

theorem name_u256_lt : (fnEntry Guest.Software.guestFn_u256_lt).1 = nm "u256_lt" := rfl

theorem roSpec_u256_lt (hC : X.code.lookup = guestCode) : ROSpec σ X (nm "u256_lt") :=
  name_u256_lt ▸
    roSpec_decl hC noRO
      (List.getElem_mem (l := Guest.Software.guestAst) (n := 46) (by decide)) ⟨_, rfl⟩
      pureR_u256_lt

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem pureR_u256_add_carry :
    pureR [] (fnEntry Guest.Software.guestFn_u256_add_carry).2.2.1 = true := by
  decide_cbv

theorem name_u256_add_carry : (fnEntry Guest.Software.guestFn_u256_add_carry).1 = nm "u256_add_carry" := rfl

theorem roSpec_u256_add_carry (hC : X.code.lookup = guestCode) :
    ROSpec σ X (nm "u256_add_carry") :=
  name_u256_add_carry ▸
    roSpec_decl hC noRO
      (List.getElem_mem (l := Guest.Software.guestAst) (n := 55) (by decide)) ⟨_, rfl⟩
      pureR_u256_add_carry

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem pureR_mul64x64 : pureR [] (fnEntry Guest.Software.guestFn_mul64x64).2.2.1 = true := by
  decide_cbv

theorem name_mul64x64 : (fnEntry Guest.Software.guestFn_mul64x64).1 = nm "mul64x64" := rfl

theorem roSpec_mul64x64 (hC : X.code.lookup = guestCode) : ROSpec σ X (nm "mul64x64") :=
  name_mul64x64 ▸
    roSpec_decl hC noRO
      (List.getElem_mem (l := Guest.Software.guestAst) (n := 59) (by decide)) ⟨_, rfl⟩
      pureR_mul64x64

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem pureR_u256_mul_full :
    pureR [nm "mul64x64"] (fnEntry Guest.Software.guestFn_u256_mul_full).2.2.1 = true := by
  decide_cbv

theorem name_u256_mul_full : (fnEntry Guest.Software.guestFn_u256_mul_full).1 = nm "u256_mul_full" := rfl

theorem roSpec_u256_mul_full (hC : X.code.lookup = guestCode) :
    ROSpec σ X (nm "u256_mul_full") :=
  name_u256_mul_full ▸
    roSpec_decl hC (oneRO (roSpec_mul64x64 hC))
      (List.getElem_mem (l := Guest.Software.guestAst) (n := 61) (by decide)) ⟨_, rfl⟩
      pureR_u256_mul_full

end InitECandidate.Solver.MemSafe.Helpers
