import InitECandidate.Solver.MemSafe.Aw.ArithRd

set_option autoImplicit false

/-!
# Scratch-arena reasoning
A framework for code that may move the scratch pointer (`scratch_alloc`) and stores into the arena:
`SPre s0 L` / `SQ s0 L` are the pre/post of the statement rules; the relation to the entry state is `SR`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Aw
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers

variable {σ : Type} {X : Ctx 64}

def SPre (s0 : State σ) (L : Locals → Prop) (t : State σ) : Prop := L t.locals ∧ SR s0 t

def SQ (s0 : State σ) (L : Locals → Prop) (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  SR s0 t ∧ (r = none → L t.locals) ∧ NB r

theorem hoareG_skipS {s0 : State σ} {L L' : Locals → Prop} (h : ∀ m, L m → L' m) :
    HoareG σ X (SPre s0 L) .skip (SQ s0 L') :=
  hoareG_skip fun _ _ hp => ⟨hp.2, fun _ => h _ hp.1, nb_none⟩

theorem hoareG_assignS {n : MlS} {e : ExpHOL 64} {s0 : State σ} {L L' : Locals → Prop}
    (h : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v → L' (s.locals.update (n, v))) :
    HoareG σ X (SPre s0 L) (.assign .local n e) (SQ s0 L') :=
  hoareG_assign fun s hs hp v hv _ => ⟨sr_locals hp.2 rfl rfl, fun _ => h s hs hp.1 v hv, nb_none⟩

theorem hoareG_returnS {e : ExpHOL 64} {s0 : State σ} {L L' : Locals → Prop} :
    HoareG σ X (SPre s0 L) (.return e) (SQ s0 L') :=
  hoareG_return fun s _ hp v hv => ⟨sr_locals hp.2 rfl rfl, (fun h => nomatch h), nb_ret _⟩

theorem hoareG_raiseS {x : MlS} {e : ExpHOL 64} {s0 : State σ} {L L' : Locals → Prop} :
    HoareG σ X (SPre s0 L) (.raise x e) (SQ s0 L') :=
  hoareG_raise fun s _ hp v hv => ⟨sr_locals hp.2 rfl rfl, (fun h => nomatch h),
    nb_abn (Or.inl ⟨x, v, rfl⟩)⟩

theorem hoareG_seqS {a b : ProgHOL 64} {s0 : State σ} {L1 L2 L3 : Locals → Prop}
    (ha : HoareG σ X (SPre s0 L1) a (SQ s0 L2)) (hb : HoareG σ X (SPre s0 L2) b (SQ s0 L3)) :
    HoareG σ X (SPre s0 L1) (.seq a b) (SQ s0 L3) :=
  hoareG_seq ha (fun r t _ hr _ h => ⟨h.1, fun h' => absurd h' hr, h.2.2⟩)
    (hoareG_pre hb fun t _ h => ⟨h.2.1 rfl, h.1⟩)

theorem hoareG_preS {p : ProgHOL 64} {s0 : State σ} {L L' : Locals → Prop}
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (h : HoareG σ X (SPre s0 L') p Q) (hL : ∀ m, L m → L' m) : HoareG σ X (SPre s0 L) p Q :=
  hoareG_pre h fun _ _ hp => ⟨hL _ hp.1, hp.2⟩

theorem hoareG_decS {x : MlS} {sh : ShapeHOL} {e : ExpHOL 64} {body : ProgHOL 64} {s0 : State σ}
    {L Lout : Locals → Prop} {L' : Locals → Locals → Prop}
    (h : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v →
      shapeEqHOL sh (shapeOfHOLExact v) = true →
      HoareG σ X (SPre s0 (fun m' => m' = s.locals.update (x, v))) body (SQ s0 (L' s.locals)))
    (hout : ∀ m m', L m → L' m m' → Lout (m'.resVarEq (x, m.lookup x))) :
    HoareG σ X (SPre s0 L) (.dec x sh e body) (SQ s0 Lout) := by
  refine hoareG_dec fun s hs hp v hv hsh => ?_
  refine hoareG_conseq (h s hs hp.1 v hv hsh) (fun t _ ht => ?_) ?_
  · subst ht
    exact ⟨rfl, hp.2⟩
  · intro r t _ _ hq
    exact ⟨sr_locals hq.1 rfl rfl, fun hr => hout _ _ hp.1 (hq.2.1 hr), hq.2.2⟩

theorem hoareG_whileS {c : ExpHOL 64} {body : ProgHOL 64} {s0 : State σ} {J J' : Locals → Prop}
    (hb : HoareG σ X (fun s => SPre s0 J s ∧ CondTrue s c) body (SQ s0 J))
    (hexit : ∀ s : State σ, InCtx s X → J s.locals → ev s c = some (.val (.word 0)) → J' s.locals) :
    HoareG σ X (SPre s0 J) (.while c body) (SQ s0 J') := by
  refine hoareG_while (fun t h => h) ?_
    (fun s hs h hc => ⟨h.2, fun _ => hexit s hs h.1 hc, nb_none⟩)
  intro t hs hpre hgood
  have hq := hb t hs hpre hgood
  refine ⟨fun h0 => ⟨hq.2.1 h0, hq.1⟩, fun h1 => absurd h1 hq.2.2.2, fun h1 => absurd h1 hq.2.2.1, ?_⟩
  intro r' h0 _ _
  exact ⟨hq.1, fun h => absurd (h0.symm.trans h) (by simp), hq.2.2⟩

theorem sr_ent {s st : State σ} {callee : HolFiniteMapExact MlS (ValueHOL 64)}
    (h : SR (callEntryStateHOLFinite s callee) st) : SR s st := h

theorem rdok_ent {s : State σ} (h : RdOK s) (callee : HolFiniteMapExact MlS (ValueHOL 64)) :
    RdOK (callEntryStateHOLFinite s callee) := h

theorem hoareG_callS {f : MlS} {args : List (ExpHOL 64)} (hf : RdSpec σ X f) {s0 : State σ}
    {L : Locals → Prop} :
    HoareG σ X (SPre s0 L) (.call (some (none, none)) f args) (SQ s0 L) := by
  refine hoareG_callD hf ?_ ?_
  · intro s hs hpre vs hvs callee v st hR _
    obtain ⟨hSR, -⟩ := hR (by simp [Good]) (rdok_ent hpre.2.2.1 callee)
    exact ⟨sr_locals (sr_trans hpre.2 (sr_ent hSR)) rfl rfl, fun _ => hpre.1, nb_none⟩
  · intro s hs hpre vs hvs callee r st hR _ habn
    obtain ⟨hSR, -⟩ := hR (abn_good habn) (rdok_ent hpre.2.2.1 callee)
    exact ⟨sr_locals (sr_trans hpre.2 (sr_ent hSR)) rfl rfl, (fun h => nomatch h), nb_abn habn⟩

theorem hoareG_decCallS {f rn : MlS} {sh : ShapeHOL} {args : List (ExpHOL 64)} {k : ProgHOL 64}
    (hf : RdSpec σ X f) {s0 : State σ} {L Lout : Locals → Prop} {L' : Locals → Locals → Prop}
    (hnew : ∀ (s : State σ) v, L s.locals → HoareG σ X
      (SPre s0 (fun m' => m' = s.locals.update (rn, v))) k (SQ s0 (L' s.locals)))
    (hout : ∀ m m', L m → L' m m' → Lout (m'.resVarEq (rn, m.lookup rn))) :
    HoareG σ X (SPre s0 L) (.decCall rn sh f args k) (SQ s0 Lout) := by
  refine hoareG_decCall hf ?_ ?_
  · intro s hs hpre vs hvs callee v st hR _ hsh
    obtain ⟨hSR, -⟩ := hR (by simp [Good]) (rdok_ent hpre.2.2.1 callee)
    refine hoareG_conseq (hoareG_pre (hnew s v hpre.1) (P' := fun t => t = setVarHOLFinite rn v
        { st with locals := s.locals }) (fun t _ ht => ?_)) (fun t _ ht => ?_) ?_
    · subst ht
      exact ⟨rfl, sr_locals (sr_trans hpre.2 (sr_ent hSR)) rfl rfl⟩
    · exact ht
    · intro r t _ _ hq
      exact ⟨sr_locals hq.1 rfl rfl, fun hr => hout _ _ hpre.1 (hq.2.1 hr), hq.2.2⟩
  · intro s hs hpre vs hvs callee r st hR _ habn
    obtain ⟨hSR, -⟩ := hR (abn_good habn) (rdok_ent hpre.2.2.1 callee)
    exact ⟨sr_locals (sr_trans hpre.2 (sr_ent hSR)) rfl rfl, (fun h => nomatch h), nb_abn habn⟩

theorem sr_alloc {s0 s st : State σ} (h : SR s0 s) (hmem : st.memory = s.memory)
    (hglob : ∀ g, g ≠ gScratch → st.globals.lookup g = s.globals.lookup g) {p' : Ptrs}
    (hp' : ptrsOf st = some p') (ho : p'.Ordered) : SR s0 st := by
  have hws : gword st wsN = gword s wsN := gword_eq_of (hglob wsN (by decide))
  obtain ⟨⟨-, -⟩, W, hW, hWe⟩ := h.2.1
  have h2 : SR s st := ⟨hglob, ⟨⟨p', hp', ho⟩, W, by rw [hws]; exact hW, hWe⟩, fun a _ => by rw [hmem]⟩
  exact sr_trans h h2

theorem hoareG_decCallAllocS {rn : MlS} {sh : ShapeHOL} {args : List (ExpHOL 64)} {k : ProgHOL 64}
    (hf : AllocSpec σ X (nm "scratch_alloc") .scratch) (n0 : BitVec 64)
    (hargs : ∀ (s : State σ) vs, evs s args = some vs → vs = [.val (.word n0)])
    {s0 : State σ} {L Lout : Locals → Prop} {L' : Locals → Locals → Prop}
    (hnew : ∀ (s : State σ) (q : BitVec 64), L s.locals → heapEnd ≤ q.toNat →
      q.toNat + n0.toNat ≤ scratchEnd → HoareG σ X
        (SPre s0 (fun m' => m' = s.locals.update (rn, .val (.word q)))) k (SQ s0 (L' s.locals)))
    (hout : ∀ m m', L m → L' m m' → Lout (m'.resVarEq (rn, m.lookup rn))) :
    HoareG σ X (SPre s0 L) (.decCall rn sh (nm "scratch_alloc") args k) (SQ s0 Lout) := by
  refine hoareG_decCall hf ?_ ?_
  · intro s hs hpre vs hvs callee v st hR _ hsh
    obtain ⟨⟨p, hp, ho⟩, -⟩ := hpre.2.2.1
    obtain ⟨hmem, hglob, p', hp', ho', hmono, hret⟩ := hR (by simp [Good]) n0 p (hargs s vs hvs) hp ho
    have hSR := sr_alloc hpre.2 (hmem : st.memory = s.memory) hglob hp' ho'
    obtain ⟨q, hv, hq8, hlive, -⟩ := hret v rfl
    subst hv
    have hLive : p'.sp ≤ q.toNat ∧ q.toNat + n0.toNat ≤ scratchEnd := hlive
    have hord' := ho'
    unfold Ptrs.Ordered at hord'
    refine hoareG_conseq (hoareG_pre (hnew s q hpre.1 (by omega) hLive.2) (P' := fun t =>
        t = setVarHOLFinite rn (.val (.word q)) { st with locals := s.locals }) (fun t _ ht => ?_))
      (fun t _ ht => ?_) ?_
    · subst ht
      exact ⟨rfl, sr_locals hSR rfl rfl⟩
    · exact ht
    · intro r t _ _ hq
      exact ⟨sr_locals hq.1 rfl rfl, fun hr => hout _ _ hpre.1 (hq.2.1 hr), hq.2.2⟩
  · intro s hs hpre vs hvs callee r st hR _ habn
    obtain ⟨⟨p, hp, ho⟩, -⟩ := hpre.2.2.1
    obtain ⟨hmem, hglob, p', hp', ho', hmono, hret⟩ := hR (abn_good habn) n0 p (hargs s vs hvs) hp ho
    exact ⟨sr_locals (sr_alloc hpre.2 (hmem : st.memory = s.memory) hglob hp' ho') rfl rfl,
      (fun h => nomatch h), nb_abn habn⟩

theorem hoareG_storeS (hT : DomBelow X) {addr e : ExpHOL 64} {s0 : State σ} {L : Locals → Prop}
    (haddr : ∀ s : State σ, InCtx s X → L s.locals → ∀ w, ev s addr = some (.val (.word w)) →
      heapEnd ≤ w.toNat) :
    HoareG σ X (SPre s0 L) (.store addr e) (SQ s0 L) := by
  refine hoareG_store fun s hs hP w v mem ha hv hst => ?_
  have hdom : s.memaddrs = X.memaddrs := hs.2.1
  have hm := stores_ge (inst := fun x => Classical.propDecidable (s.memaddrs x))
    (fun x hx => hT x (hdom ▸ hx)) hst
  have hw := haddr s hs hP.1 w ha
  refine ⟨?_, fun _ => hP.1, nb_none⟩
  obtain ⟨hg, hok, hmod⟩ := hP.2
  refine ⟨hg, hok, fun a hna => ?_⟩
  have hnot : ¬ (∃ j, j < (flattenHOL v).length ∧ w.toNat ≤ a.toNat) := by
    rintro ⟨j, -, hj⟩
    exact hna (Or.inl (le_trans hw hj))
  show mem a = s0.memory a
  rw [hm a hnot]
  exact hmod a hna

/-- `try f(args) catch hid => hvar { hprog }`. -/
theorem hoareG_callH {P : PanSemStateFiniteExact 64 σ → Prop}
    {Q : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop} {f : MlS}
    {args : List (ExpHOL 64)}
    {R : List (ValueHOL 64) → PanSemStateFiniteExact 64 σ → PanSemResultExact 64 →
      PanSemStateFiniteExact 64 σ → Prop} {hid hvar : MlS} {hprog : ProgHOL 64} (hf : FunSpec σ X f R)
    (hret : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee v (st : PanSemStateFiniteExact 64 σ),
        R vs (callEntryStateHOLFinite s callee) (.returned v) st → InCtx st X →
        Q none { st with locals := s.locals })
    (hhand : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee v (st : PanSemStateFiniteExact 64 σ),
        R vs (callEntryStateHOLFinite s callee) (.exception hid v) st → InCtx st X →
        HoareG σ X (fun t => t = setVarHOLFinite hvar v { st with locals := s.locals }) hprog Q)
    (habn : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee r (st : PanSemStateFiniteExact 64 σ),
        R vs (callEntryStateHOLFinite s callee) r st → InCtx st X → Abn r →
        (∀ v, r ≠ .exception hid v) → Q (some r) (emptyLocalsHOLFinite st)) :
    HoareG σ X P (.call (some (none, some (hid, hvar, hprog))) f args) Q := by
  intro s hs hp
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.call (some (none, some (hid, hvar, hprog))) f args)]
  dsimp only
  split
  · intro hg; exact absurd hg (by simp [Good])
  · rename_i vs hvs
    rw [hs.1]
    split
    · intro hg; exact absurd hg (by simp [Good])
    · rename_i body callee rs hlook
      split
      · intro hg; exact absurd hg (by simp [Good])
      · have hspec := hf vs body callee rs hlook _ (entry_inCtx hs callee) rfl
        have hctx := inCtx_eval (entry_inCtx hs callee) body
        cases ho : evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body with
        | mk r st =>
          rw [ho] at hspec hctx
          dsimp only at hspec hctx
          cases r with
          | none => dsimp only; intro hg; exact absurd hg (by simp [Good])
          | some r =>
            cases r with
            | returned v =>
                dsimp only
                split
                · intro _; exact hret s hs hp vs hvs callee v st (hspec _ rfl) hctx
                · intro hg; exact absurd hg (by simp [Good])
            | exception e v =>
                dsimp only
                by_cases he : e = hid
                · subst he
                  simp only [if_true]
                  split
                  · rename_i shape hsh
                    split
                    · intro hg
                      exact hhand s hs hp vs hvs callee _ st (hspec _ rfl) hctx _ hctx rfl hg
                    · intro hg; exact absurd hg (by simp [Good])
                  · intro hg; exact absurd hg (by simp [Good])
                · simp only [he, if_false]
                  intro _
                  exact habn s hs hp vs hvs callee _ st (hspec _ rfl) hctx (Or.inl ⟨e, v, rfl⟩)
                    (fun v' h => he (by cases h; rfl))
            | finalFfi e =>
                dsimp only; intro _
                exact habn s hs hp vs hvs callee _ st (hspec _ rfl) hctx (Or.inr ⟨e, rfl⟩)
                  (fun v h => by cases h)
            | «break» => dsimp only; intro hg; exact absurd hg (by simp [Good])
            | «continue» => dsimp only; intro hg; exact absurd hg (by simp [Good])
            | error => dsimp only; intro hg; exact absurd hg (by simp [Good])
            | timeOut => dsimp only; intro hg; exact absurd hg (by simp [Good])

end InitECandidate.Solver.MemSafe.Aw
