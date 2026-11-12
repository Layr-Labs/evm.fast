import InitECandidate.Solver.MemSafe.FpKeep
import InitECandidate.Solver.MemSafe.ShMem

/-!
# Functions whose good results are returns or abortive

The htab specs (and most hand specs) cover returning runs only, but a capability summary
(`SumSpecA`) covers every good non-abortive result. `NoExc σ X f`: every good result of `f` is a
return or abortive (a final FFI event, or the `TrapErr` exception that only `trap_with`
raises). With it a returns-only spec covers all the results a `SumSpecA` asks about.

* `xChk tab lp p`: `p` raises only `TrapErr`, has no handlers, uses `break` / `continue` only
  inside loops (`lp`), and calls only functions of `tab`.
* `xChk_sound`: a checked statement ends normally, returns, leaves a loop (inside one), or ends
  abortively.
* `noExc_of_chk`: a function whose body passes `xChk` (with `lp = false`) has `NoExc`.
* `noExcTab_cons`: the table is built callee-first, like the summary fold.
-/

namespace InitECandidate.Solver.MemSafe
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- Every good result of `f` is a return or abortive. -/
def NoExc (σ : Type) (X : Ctx 64) (f : MlS) : Prop :=
  FunSpec σ X f (fun _ _ r _ => Good (some r) → (∃ v, r = .returned v) ∨ Abortive r)

def NoExcTab (σ : Type) (X : Ctx 64) (tab : List MlS) : Prop := ∀ f ∈ tab, NoExc σ X f

/-- The statement post: normal end, a return, a loop exit (inside a loop), or abortive. -/
def XQ (lp : Bool) : Option (PanSemResultExact 64) → Prop
  | none => True
  | some (.returned _) => True
  | some .break => lp = true
  | some .continue => lp = true
  | some r => Abortive r

/-- The check. -/
def xChk (tab : List MlS) (lp : Bool) : ProgHOL 64 → Bool
  | .skip => true
  | .annot _ _ => true
  | .tick => true
  | .break => lp
  | .continue => lp
  | .raise e _ => e == trapErr
  | .return _ => true
  | .assign _ _ _ => true
  | .store _ _ => true
  | .store32 _ _ => true
  | .storeByte _ _ => true
  | .primitive _ _ _ => true
  | .shMemStore _ _ _ => true
  | .shMemLoad _ .local _ _ => true
  | .extCall _ _ _ _ (.const c) => c == 0
  | .seq p q => xChk tab lp p && xChk tab lp q
  | .ite _ p q => xChk tab lp p && xChk tab lp q
  | .while _ b => xChk tab true b
  | .dec _ _ _ b => xChk tab lp b
  | .decCall _ _ f _ k => tab.contains f && xChk tab lp k
  | .call none f _ => tab.contains f
  | .call (some (none, none)) f _ => tab.contains f
  | .call (some (some _, none)) f _ => tab.contains f
  | _ => false

theorem xq_abn {lp : Bool} {r : PanSemResultExact 64} (h : Abortive r) : XQ lp (some r) := by
  cases r with
  | exception e v => exact h
  | finalFfi e => exact h
  | _ => exact h.elim

theorem xq_call {lp : Bool} {r : PanSemResultExact 64}
    (hR : Good (some r) → (∃ v, r = .returned v) ∨ Abortive r)
    (habn : Abn r) : XQ lp (some r) := by
  rcases hR (abn_good habn) with ⟨v, rfl⟩ | h
  · rcases habn with ⟨e, w, he⟩ | ⟨e, he⟩ <;> cases he
  · exact xq_abn h

theorem xChk_sound {tab : List MlS} (hT : NoExcTab σ X tab) :
    ∀ (lp : Bool) (p : ProgHOL 64), xChk tab lp p = true →
      HoareG σ X (fun _ => True) p (fun r _ => XQ lp r)
  | _, .skip, _ => hoareG_skip fun _ _ _ => trivial
  | _, .annot _ _, _ => hoareG_annot fun _ _ _ => trivial
  | _, .tick, _ => hoareG_tick fun _ _ _ _ => trivial
  | _, .break, h => hoareG_break fun _ _ _ => h
  | _, .continue, h => hoareG_continue fun _ _ _ => h
  | _, .raise e _, h => hoareG_raise fun _ _ _ _ _ => by
      have : e = trapErr := by simpa [xChk] using h
      exact this
  | _, .return _, _ => hoareG_return fun _ _ _ _ _ => trivial
  | _, .assign _ _ _, _ => hoareG_assignK fun _ _ _ _ _ _ => trivial
  | _, .store _ _, _ => hoareG_store fun _ _ _ _ _ _ _ _ _ => trivial
  | _, .store32 _ _, _ => hoareG_store32 fun _ _ _ _ _ _ _ _ _ => trivial
  | _, .storeByte _ _, _ => hoareG_storeByte fun _ _ _ _ _ _ _ _ _ => trivial
  | _, .primitive _ _ _, _ => hoareG_primitive fun _ _ _ _ => trivial
  | lp, .shMemStore op ea ev, _ => by
      intro s hs _ hg
      obtain ⟨-, h⟩ := AllocImpl.hoareG_shMemStore_same (X := X) (o := op) (a := ea)
        (v := ev) (s0 := s) s hs ⟨rfl, rfl, rfl⟩ hg
      rcases h with h | ⟨e, h⟩
      · rw [h]; trivial
      · rw [h]; exact xq_abn (r := .finalFfi e) trivial
  | _, .shMemLoad op k x ad, h => by
      cases k with
      | global => simp [xChk] at h
      | «local» =>
          exact hoareG_shMemLoad_local (fun _ _ _ _ _ => trivial)
            (fun _ _ _ e => xq_abn (r := .finalFfi e) trivial)
  | lp, .seq p q, h => by
      simp only [xChk, Bool.and_eq_true] at h
      refine hoareG_seq (xChk_sound hT lp p h.1) (fun _ _ _ _ _ H => H) ?_
      exact hoareG_pre (xChk_sound hT lp q h.2) (fun _ _ _ => trivial)
  | lp, .ite c p q, h => by
      simp only [xChk, Bool.and_eq_true] at h
      exact hoareG_ite (hoareG_pre (xChk_sound hT lp p h.1) (fun _ _ _ => trivial))
        (hoareG_pre (xChk_sound hT lp q h.2) (fun _ _ _ => trivial))
  | lp, .while c b, h => by
      simp only [xChk] at h
      have hb := xChk_sound hT true b h
      refine hoareG_while (I := fun _ => True) (fun _ _ => trivial) ?_ (fun _ _ _ _ => trivial)
      refine hoareG_pre (hoareG_conseq hb (fun _ _ _ => trivial) ?_) (fun _ _ _ => trivial)
      intro r t _ _ H
      refine ⟨fun _ => trivial, fun _ => trivial, fun _ => trivial, fun r' hr h1 h2 => ?_⟩
      subst hr
      cases r' with
      | «break» => exact absurd rfl h2
      | «continue» => exact absurd rfl h1
      | _ => exact H
  | lp, .dec x sh e b, h => by
      simp only [xChk] at h
      refine hoareG_dec fun s _ _ v _ _ => ?_
      exact hoareG_pre (hoareG_conseq (xChk_sound hT lp b h) (fun _ _ H => H)
        (fun _ _ _ _ H => H)) (fun _ _ _ => trivial)
  | lp, .decCall x sh f args k, h => by
      simp only [xChk, Bool.and_eq_true] at h
      have hfs := hT f (List.contains_iff_mem.mp h.1)
      refine hoareG_decCall hfs ?_ ?_
      · intro s _ _ vs _ callee v st _ _ _
        exact hoareG_pre (hoareG_conseq (xChk_sound hT lp k h.2) (fun _ _ H => H)
          (fun _ _ _ _ H => H)) (fun _ _ _ => trivial)
      · intro s _ _ vs _ callee r st hR _ habn
        exact xq_call hR habn
  | lp, .call none f args, h => by
      simp only [xChk] at h
      have hfs := hT f (List.contains_iff_mem.mp h)
      refine hoareG_tailCall hfs (fun _ _ _ _ _ _ _ _ _ _ => trivial) ?_
      intro s _ _ vs _ callee r st hR _ habn
      exact xq_call hR habn
  | lp, .call (some (none, none)) f args, h => by
      simp only [xChk] at h
      have hfs := hT f (List.contains_iff_mem.mp h)
      refine hoareG_callD hfs (fun _ _ _ _ _ _ _ _ _ _ => trivial) ?_
      intro s _ _ vs _ callee r st hR _ habn
      exact xq_call hR habn
  | lp, .call (some (some (k, x), none)) f args, h => by
      simp only [xChk] at h
      have hfs := hT f (List.contains_iff_mem.mp h)
      refine hoareG_callA hfs (fun _ _ _ _ _ _ _ _ _ _ _ => trivial) ?_
      intro s _ _ vs _ callee r st hR _ habn
      exact xq_call hR habn
  | _, .call (some (_, some _)) _ _, h => by simp [xChk] at h
  | lp, .extCall f a b c e, h => by
      cases e with
      | const z =>
        have hz : z = 0 := by simpa [xChk] using h
        subst hz
        show HoareG σ X (fun _ => True) (.extCall f a b c (cw 0)) (fun r _ => XQ lp r)
        intro s hs _ hg
        have H := AllocImpl.hoareG_extCall_same (X := X) (f := f) (a := a) (b := b) (c := c)
          (s0 := s) s hs ⟨rfl, rfl, rfl⟩ hg
        rcases H with ⟨h1, -⟩ | ⟨⟨e, h1⟩, -⟩
        · rw [h1]; trivial
        · rw [h1]; exact xq_abn (r := .finalFfi e) trivial
      | _ => simp [xChk] at h

/-- A function whose body passes `xChk` has `NoExc`. -/
theorem noExc_of_chk {tab : List MlS} (hT : NoExcTab σ X tab) {f : MlS}
    {ps : List (MlS × ShapeHOL)} {bd : ProgHOL 64} {rsh : ShapeHOL}
    (hcode : X.code.lookup f = some (ps, bd, rsh)) (hchk : xChk tab false bd = true) :
    NoExc σ X f := by
  intro vs body callee rs hl s hs _ r hr hg
  obtain ⟨rfl, -, -, -⟩ := lookupCode_gen hcode hl
  have H := xChk_sound hT false _ hchk s hs trivial (by rw [hr]; exact hg)
  rw [hr] at H
  cases r with
  | returned v => exact Or.inl ⟨v, rfl⟩
  | exception e v => exact Or.inr H
  | finalFfi e => exact Or.inr H
  | «break» => exact absurd H (by simp [XQ])
  | «continue» => exact absurd H (by simp [XQ])
  | error => exact absurd hg (by simp [Good])
  | timeOut => exact absurd hg (by simp [Good])

theorem noExcTab_nil : NoExcTab σ X [] := fun _ h => by cases h

theorem noExcTab_cons {tab : List MlS} (hT : NoExcTab σ X tab) {f : MlS} (hf : NoExc σ X f) :
    NoExcTab σ X (f :: tab) := by
  intro g hg
  rcases List.mem_cons.mp hg with rfl | hg
  · exact hf
  · exact hT g hg

/-- **`SumSpecA` from a returns-only post.** If every good result of `f` is a return or
abortive, a summary need only be shown for returns. -/
theorem sumSpecA_of_returns {C : Cfg} {H : Hooks σ} {f : MlS} {sg : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hx : NoExc σ X f)
    (h : FunSpec σ X f (fun vs s r t => ∀ v, r = .returned v → ∀ Γ, G C H Γ s →
      (∃ p, ptrsOf s = some p ∧ ArgsOK C Γ p sg.params vs) → Pre vs s Γ →
        ∃ Γ' p p', SumCore C H sg (fun a => ProtCell C Γ a ∧ PW vs s Γ a) Γ s vs r t Γ' p p' ∧
          Q vs s Γ r t Γ')) :
    SumSpecA σ X C H f sg Pre PW Q := by
  intro vs body callee rs hl s hs hloc r hr hg hna Γ hG hargs hpre
  rcases hx vs body callee rs hl s hs hloc r hr hg with ⟨v, hv⟩ | hab
  · exact h vs body callee rs hl s hs hloc r hr v hv Γ hG hargs hpre
  · exact absurd hab hna

end InitECandidate.Solver.MemSafe
