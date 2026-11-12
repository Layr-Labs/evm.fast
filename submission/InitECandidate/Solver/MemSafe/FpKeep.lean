import InitECandidate.Solver.MemSafe.Sound2
import InitECandidate.Solver.MemSafe.Entry

/-!
# "Keeps `frame_mem_ptr`" (interface rev. 5, the SummFp flag)

An opt-in fact next to the summaries: `KeepsFp σ X f` says every good, non-abortive run of
`f` ends with the global `frame_mem_ptr` unchanged. It is independent of `G` and composes on
its own; only functions in a `KeepsFp` table carry it.

* `fpChk tab p`: `p` assigns `frame_mem_ptr` nowhere, calls only functions of `tab` (and
  catches no `TrapErr`).
* `fpChk_sound`: a checked statement keeps `frame_mem_ptr` on every non-abortive result.
* `keepsFp_of_chk`: a function whose body passes `fpChk` keeps it.
* `fpTabSound_cons`: tables are built callee-first, like the summary fold.
-/

namespace InitECandidate.Solver.MemSafe
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- `f` keeps `frame_mem_ptr` on every good, non-abortive result. -/
def KeepsFp (σ : Type) (X : Ctx 64) (f : MlS) : Prop :=
  FunSpec σ X f (fun _ s r t => Good (some r) → ¬ Abortive r →
    t.globals.lookup gFrame = s.globals.lookup gFrame)

def FpTabSound (σ : Type) (X : Ctx 64) (tab : List MlS) : Prop := ∀ f ∈ tab, KeepsFp σ X f

/-- Non-abortive (or no) result. -/
def NA : Option (PanSemResultExact 64) → Prop
  | none => True
  | some r => ¬ Abortive r

/-- The post: `frame_mem_ptr` is `w` after a non-abortive result. -/
def FQ (w : Option (ValueHOL 64)) (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  NA r → t.globals.lookup gFrame = w

def FP (w : Option (ValueHOL 64)) (s : State σ) : Prop := s.globals.lookup gFrame = w

/-- The check. -/
def fpChk (tab : List MlS) : ProgHOL 64 → Bool
  | .skip => true
  | .annot _ _ => true
  | .tick => true
  | .break => true
  | .continue => true
  | .raise _ _ => true
  | .return _ => true
  | .assign .local _ _ => true
  | .assign .global g _ => g != gFrame
  | .store _ _ => true
  | .store32 _ _ => true
  | .storeByte _ _ => true
  | .primitive _ _ _ => true
  | .shMemStore _ _ _ => true
  | .shMemLoad _ .local _ _ => true
  | .extCall _ _ _ _ (.const c) => c == 0
  | .seq p q => fpChk tab p && fpChk tab q
  | .ite _ p q => fpChk tab p && fpChk tab q
  | .while _ b => fpChk tab b
  | .dec _ _ _ b => fpChk tab b
  | .decCall _ _ f _ k => tab.contains f && fpChk tab k
  | .call none f _ => tab.contains f
  | .call (some (none, none)) f _ => tab.contains f
  | .call (some (some (.local, _), none)) f _ => tab.contains f
  | .call (some (some (.global, g), none)) f _ => tab.contains f && g != gFrame
  | .call (some (none, some (eid, _, hp))) f _ =>
    tab.contains f && eid != trapErr && fpChk tab hp
  | .call (some (some (.local, _), some (eid, _, hp))) f _ =>
    tab.contains f && eid != trapErr && fpChk tab hp
  | .call (some (some (.global, g), some (eid, _, hp))) f _ =>
    tab.contains f && g != gFrame && eid != trapErr && fpChk tab hp
  | _ => false

theorem fq_of {w : Option (ValueHOL 64)} {r : Option (PanSemResultExact 64)} {t : State σ}
    (h : t.globals.lookup gFrame = w) : FQ w r t := fun _ => h

theorem keeps_call {f : MlS} (hk : KeepsFp σ X f) {w : Option (ValueHOL 64)} {s : State σ}
    (hs : FP w s) {vs : List (ValueHOL 64)} {callee : HolFiniteMapExact MlS (ValueHOL 64)}
    {r : PanSemResultExact 64} {st : State σ}
    (hR : (fun _ s r t => Good (some r) → ¬ Abortive r →
      t.globals.lookup gFrame = s.globals.lookup gFrame) vs (callEntryStateHOLFinite s callee) r st)
    (hg : Good (some r)) (hna : ¬ Abortive r) : st.globals.lookup gFrame = w :=
  (hR hg hna).trans hs

theorem abn_good {r : PanSemResultExact 64} (h : Abn r) : Good (some r) := by
  rcases h with ⟨e, v, rfl⟩ | ⟨e, rfl⟩ <;> simp [Good]

theorem lookup_gFrame_set {g : MlS} (hg : (g != gFrame) = true) (v : ValueHOL 64) (s : State σ) :
    (setGlobalHOLFinite g v s).globals.lookup gFrame = s.globals.lookup gFrame :=
  lookup_update_ne _ _ (by simpa using hg)

theorem lookup_gFrame_kvar {k : VarKind} {x : MlS} (hk : k = .local ∨ (x != gFrame) = true)
    (v : ValueHOL 64) (s : State σ) :
    (setKvarHOLFinite k x v s).globals.lookup gFrame = s.globals.lookup gFrame := by
  cases k with
  | «local» => rfl
  | global =>
    rcases hk with h | h
    · cases h
    · exact lookup_gFrame_set h v s

/-- Calls through `hoareG_callA` / `callH`-normal parts. -/
theorem fp_callA {tab : List MlS} (hT : FpTabSound σ X tab) {f : MlS} (hf : tab.contains f = true)
    {k : VarKind} {x : MlS} (hk : k = .local ∨ (x != gFrame) = true) {args : List (ExpHOL 64)}
    (w : Option (ValueHOL 64)) :
    HoareG σ X (FP w) (.call (some (some (k, x), none)) f args) (FQ w) := by
  have hfs := hT f (List.contains_iff_mem.mp hf)
  refine hoareG_callA hfs ?_ ?_
  · intro s _ hs vs _ callee v st hR _ _
    refine fq_of ?_
    rw [lookup_gFrame_kvar hk]
    exact keeps_call (vs := vs) hfs hs hR (by simp [Good]) (by simp [Abortive])
  · intro s _ hs vs _ callee r st hR _ habn hna
    exact keeps_call (vs := vs) hfs hs hR (abn_good habn) hna

theorem fpChk_sound {tab : List MlS} (hT : FpTabSound σ X tab) :
    ∀ (p : ProgHOL 64), fpChk tab p = true → ∀ w, HoareG σ X (FP w) p (FQ w)
  | .skip, _, w => hoareG_skip fun _ _ hs => fq_of hs
  | .annot _ _, _, w => hoareG_annot fun _ _ hs => fq_of hs
  | .tick, _, w => hoareG_tick fun _ _ hs _ => fq_of hs
  | .break, _, w => hoareG_break fun _ _ hs => fq_of hs
  | .continue, _, w => hoareG_continue fun _ _ hs => fq_of hs
  | .raise _ _, _, w => hoareG_raise fun _ _ hs _ _ => fq_of hs
  | .return _, _, w => hoareG_return fun _ _ hs _ _ => fq_of hs
  | .assign k x e, h, w => by
      refine hoareG_assignK fun s _ hs v _ _ => fq_of ?_
      have hk : k = .local ∨ (x != gFrame) = true := by
        cases k with
        | «local» => exact Or.inl rfl
        | global => exact Or.inr (by simpa [fpChk] using h)
      rw [lookup_gFrame_kvar hk]; exact hs
  | .store _ _, _, w => hoareG_store fun _ _ hs _ _ _ _ _ _ => fq_of hs
  | .store32 _ _, _, w => hoareG_store32 fun _ _ hs _ _ _ _ _ _ => fq_of hs
  | .storeByte _ _, _, w => hoareG_storeByte fun _ _ hs _ _ _ _ _ _ => fq_of hs
  | .primitive _ _ _, _, w => hoareG_primitive fun _ _ hs _ => fq_of hs
  | .shMemStore op ea ev, _, w => by
      intro s hs hp hg
      obtain ⟨⟨-, hgl, -⟩, -⟩ := AllocImpl.hoareG_shMemStore_same (X := X) (o := op) (a := ea)
        (v := ev) (s0 := s) s hs ⟨rfl, rfl, rfl⟩ hg
      exact fq_of (by rw [hgl]; exact hp)
  | .shMemLoad op k x ad, h, w => by
      cases k with
      | global => simp [fpChk] at h
      | «local» =>
          exact hoareG_shMemLoad_local (fun _ _ hs _ _ => fq_of hs)
            (fun _ _ _ _ hna => absurd trivial hna)
  | .seq p q, h, w => by
      simp only [fpChk, Bool.and_eq_true] at h
      refine hoareG_seq (fpChk_sound hT p h.1 w) (fun _ _ _ _ _ H => H) ?_
      exact hoareG_pre (fpChk_sound hT q h.2 w) (fun _ _ H => H trivial)
  | .ite c p q, h, w => by
      simp only [fpChk, Bool.and_eq_true] at h
      exact hoareG_ite (hoareG_pre (fpChk_sound hT p h.1 w) (fun _ _ H => H.1))
        (hoareG_pre (fpChk_sound hT q h.2 w) (fun _ _ H => H.1))
  | .while c b, h, w => by
      simp only [fpChk] at h
      have hb := fpChk_sound hT b h w
      refine hoareG_while (I := FP w) (fun s hs => hs) ?_ (fun _ _ hs _ => fq_of hs)
      refine hoareG_pre (hoareG_conseq hb (fun _ _ H => H.1) ?_) (fun _ _ H => H)
      intro r t _ _ H
      refine ⟨fun hr => H (by rw [hr]; trivial), fun hr => H (by rw [hr]; simp [NA, Abortive]),
        fun hr _ => H (by rw [hr]; simp [NA, Abortive]), fun r' hr _ _ => hr ▸ H⟩
  | .dec x sh e b, h, w => by
      simp only [fpChk] at h
      refine hoareG_dec fun s _ hs v _ _ => ?_
      refine hoareG_pre (hoareG_conseq (fpChk_sound hT b h w) (fun _ _ H => H)
        (fun r t _ _ H hna => H hna)) ?_
      intro t _ ht
      subst ht
      exact hs
  | .decCall x sh f args k, h, w => by
      simp only [fpChk, Bool.and_eq_true] at h
      have hfs := hT f (List.contains_iff_mem.mp h.1)
      refine hoareG_decCall hfs ?_ ?_
      · intro s _ hs vs _ callee v st hR _ _
        have hst := keeps_call (vs := vs) hfs hs hR (by simp [Good]) (by simp [Abortive])
        refine hoareG_pre (hoareG_conseq (fpChk_sound hT k h.2 w) (fun _ _ H => H)
          (fun r t _ _ H hna => H hna)) ?_
        intro t _ ht
        subst ht
        exact hst
      · intro s _ hs vs _ callee r st hR _ habn hna
        exact keeps_call (vs := vs) hfs hs hR (abn_good habn) hna
  | .call none f args, h, w => by
      simp only [fpChk] at h
      have hfs := hT f (List.contains_iff_mem.mp h)
      refine hoareG_tailCall hfs ?_ ?_
      · intro s _ hs vs _ callee v st hR _ _
        exact keeps_call (vs := vs) hfs hs hR (by simp [Good]) (by simp [Abortive])
      · intro s _ hs vs _ callee r st hR _ habn hna
        exact keeps_call (vs := vs) hfs hs hR (abn_good habn) hna
  | .call (some (none, none)) f args, h, w => by
      simp only [fpChk] at h
      have hfs := hT f (List.contains_iff_mem.mp h)
      refine hoareG_callD hfs ?_ ?_
      · intro s _ hs vs _ callee v st hR _
        exact fq_of (keeps_call (vs := vs) hfs hs hR (by simp [Good]) (by simp [Abortive]))
      · intro s _ hs vs _ callee r st hR _ habn hna
        exact keeps_call (vs := vs) hfs hs hR (abn_good habn) hna
  | .call (some (some (.local, x), none)) f args, h, w => by
      simp only [fpChk] at h
      exact fp_callA hT h (Or.inl rfl) w
  | .call (some (some (.global, g), none)) f args, h, w => by
      simp only [fpChk, Bool.and_eq_true] at h
      exact fp_callA hT h.1 (Or.inr h.2) w
  | .call (some (tgt, some (eid, hv, hp))) f args, h, w => by
      have H : tab.contains f = true ∧ (∀ k x, tgt = some (k, x) → k = .local ∨ (x != gFrame) = true) ∧
          (eid != trapErr) = true ∧ fpChk tab hp = true := by
        rcases tgt with _ | ⟨k, x⟩
        · simp only [fpChk, Bool.and_eq_true] at h
          exact ⟨h.1.1, (fun _ _ h' => by cases h'), h.1.2, h.2⟩
        · cases k with
          | «local» =>
            simp only [fpChk, Bool.and_eq_true] at h
            exact ⟨h.1.1, (fun k' x' h' => by cases h'; exact Or.inl rfl), h.1.2, h.2⟩
          | global =>
            simp only [fpChk, Bool.and_eq_true] at h
            exact ⟨h.1.1.1, (fun k' x' h' => by cases h'; exact Or.inr h.1.1.2), h.1.2, h.2⟩
      obtain ⟨hf, htg, heid, hhp⟩ := H
      have hfs := hT f (List.contains_iff_mem.mp hf)
      have heid' : ¬ Abortive (.exception eid (.val (.word 0))) := by
        simpa [Abortive] using heid
      refine hoareG_callH hfs ?_ ?_ ?_
      · intro s _ hs vs _ callee v st hR _
        have hst := keeps_call (vs := vs) hfs hs hR (by simp [Good]) (by simp [Abortive])
        refine ⟨fun _ => fq_of hst, fun k x hkx _ => fq_of ?_⟩
        rw [lookup_gFrame_kvar (htg k x hkx)]
        exact hst
      · intro s _ hs vs _ callee v st hR _
        have hst := keeps_call (vs := vs) hfs hs hR (by simp [Good]) (by simpa [Abortive] using heid)
        refine hoareG_pre (fpChk_sound hT hp hhp w) ?_
        intro t _ ht
        subst ht
        exact hst
      · intro s _ hs vs _ callee r st hR _ habn _ hna
        exact keeps_call (vs := vs) hfs hs hR (abn_good habn) hna
  | .extCall f a b c e, h, w => by
      cases e with
      | const z =>
        have hz : z = 0 := by simpa [fpChk] using h
        subst hz
        show HoareG σ X (FP w) (.extCall f a b c (cw 0)) (FQ w)
        intro s hs hp hg
        have H := AllocImpl.hoareG_extCall_same (X := X) (f := f) (a := a) (b := b) (c := c)
          (s0 := s) s hs ⟨rfl, rfl, rfl⟩ hg
        rcases H with ⟨-, -, hgl, -⟩ | ⟨-, -, hgl⟩
        · exact fq_of (by rw [hgl]; exact hp)
        · exact fq_of (by rw [hgl]; exact hp)
      | _ => simp [fpChk] at h

/-- A function whose body passes `fpChk` keeps `frame_mem_ptr`. -/
theorem keepsFp_of_chk {tab : List MlS} (hT : FpTabSound σ X tab) {f : MlS}
    {ps : List (MlS × ShapeHOL)} {bd : ProgHOL 64} {rsh : ShapeHOL}
    (hcode : X.code.lookup f = some (ps, bd, rsh)) (hchk : fpChk tab bd = true) :
    KeepsFp σ X f := by
  intro vs body callee rs hl s hs _ r hr hg hna
  obtain ⟨rfl, -, -, -⟩ := lookupCode_gen hcode hl
  have H := fpChk_sound hT _ hchk (s.globals.lookup gFrame) s hs rfl (by rw [hr]; exact hg)
  rw [hr] at H
  exact H hna

theorem fpTabSound_nil : FpTabSound σ X [] := fun _ h => by cases h

theorem fpTabSound_cons {tab : List MlS} (hT : FpTabSound σ X tab) {f : MlS}
    (hf : KeepsFp σ X f) : FpTabSound σ X (f :: tab) := by
  intro g hg
  rcases List.mem_cons.mp hg with rfl | hg
  · exact hf
  · exact hT g hg

end InitECandidate.Solver.MemSafe
