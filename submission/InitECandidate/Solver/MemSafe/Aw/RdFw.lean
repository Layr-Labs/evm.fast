import InitECandidate.Solver.MemSafe.Aw.Rd

set_option autoImplicit false

/-!
# Read-only reasoning with `RdSpec` callees
`PureR S p`: `p` has no store, no global write and no FFI; it may `throw`, run `.primitive` statements and
call functions of `S`. `hoareG_pureR`: from `RdOK` such a program is an `SR` (the scratch pointer may
have moved only when it ends abnormally), and a normal or returned end restores the globals and writes
only in `RdF`, provided every function of `S` has an `RdSpec`.
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

theorem hoareG_raiseZ {x : MlS} {e : ExpHOL 64} {Rf : BitVec 64 → Prop} {s0 : State σ}
    {L L' : Locals → Prop} {Ret : ValueHOL 64 → Prop} :
    HoareG σ X (LPre Rf s0 L) (.raise x e) (LZ Rf s0 L' Ret) :=
  hoareG_raise fun s hs hp v hv =>
    ⟨⟨hp.2, (fun h => nomatch h), fun w hw => nomatch hw⟩, nb_abn (Or.inl ⟨x, v, rfl⟩)⟩

theorem hoareG_primZ {name : MlS} {op : PrimOp} {args : List (ExpHOL 64)} {Rf : BitVec 64 → Prop}
    {s0 : State σ} {L : Locals → Prop} {Ret : ValueHOL 64 → Prop} :
    HoareG σ X (LPre Rf s0 L) (.primitive name op args) (LZ Rf s0 (fun _ => True) Ret) := by
  intro s hs hp
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.primitive name op args)]
  dsimp only
  intro hg
  split
  · rename_i heq
    simp only [heq] at hg
    exact absurd hg (by simp [Good])
  · rename_i vals heq
    split
    · rename_i heq2
      simp only [heq, heq2] at hg
      exact absurd hg (by simp [Good])
    · rename_i v heq2
      split
      · exact ⟨⟨hp.2, fun _ => trivial, fun _ h => nomatch h⟩, nb_none⟩
      · rename_i hv
        simp only [heq, heq2, hv] at hg
        exact absurd hg (by simp [Good])

theorem gword_eq_of {s t : State σ} {g : MlS} (h : t.globals.lookup g = s.globals.lookup g) :
    gword t g = gword s g := by
  unfold gword
  rw [h]

theorem gword_congr {s t : State σ} (h : t.globals = s.globals) (g : MlS) : gword t g = gword s g := by
  unfold gword
  rw [h]

theorem rdok_entry {s0 s : State σ} (h0 : RdOK s0) (hg : s.globals = s0.globals)
    (callee : HolFiniteMapExact MlS (ValueHOL 64)) : RdOK (callEntryStateHOLFinite s callee) := by
  obtain ⟨⟨p, hp, ho⟩, W, hW, hWe⟩ := h0
  have hg' : (callEntryStateHOLFinite s callee).globals = s0.globals := hg
  refine ⟨⟨p, ?_, ho⟩, W, ?_, hWe⟩
  · rw [← hp]; exact AllocImpl.ptrsOf_congr hg'
  · rw [gword_congr hg']; exact hW

theorem rdF_of_sr {s0 s : State σ} (h : SR s0 s) {x : BitVec 64} (hx : RdF s x) : RdF s0 x := by
  rcases hx with hx | ⟨W, hW, hov⟩
  · exact Or.inl hx
  · refine Or.inr ⟨W, ?_, hov⟩
    rw [← hW]
    exact (gword_eq_of (h.1 wsN (by decide))).symm

theorem sr_refl {s : State σ} (h : RdOK s) : SR s s := sr_of_same h rfl (fun _ _ => rfl)

theorem sr_trans {s0 s t : State σ} (h1 : SR s0 s) (h2 : SR s t) : SR s0 t :=
  ⟨fun g hg => (h2.1 g hg).trans (h1.1 g hg), h2.2.1, fun a ha => by
    rw [h2.2.2 a (fun hh => ha (rdF_of_sr h1 hh)), h1.2.2 a ha]⟩

theorem sr_locals {s0 s t : State σ} (h : SR s0 s) (hg : t.globals = s.globals)
    (hm : t.memory = s.memory) : SR s0 t := by
  refine sr_trans h (sr_of_same h.2.1 hg (fun a _ => by rw [hm]))

theorem sr_of_bw {s0 t : State σ} (hord : RdOK s0) (h : BWPost (RdF s0) s0 t) : SR s0 t :=
  sr_of_same hord h.1 h.2

/-- The post of the read-only statement rules. -/
def YQ (s0 : State σ) (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  SR s0 t ∧ ((r = none ∨ ∃ v, r = some (.returned v)) → BWPost (RdF s0) s0 t) ∧ NB r

abbrev YPre (s0 : State σ) : State σ → Prop := fun t => BWPost (RdF s0) s0 t

theorem hoareG_raiseY {x : MlS} {e : ExpHOL 64} {s0 : State σ} (hord : RdOK s0) :
    HoareG σ X (YPre s0) (.raise x e) (YQ s0) :=
  hoareG_raise fun s hs hp v hv =>
    ⟨sr_of_bw hord hp, (fun h => by rcases h with h | ⟨w, h⟩ <;> cases h),
      nb_abn (Or.inl ⟨x, v, rfl⟩)⟩

theorem hoareG_primY {name : MlS} {op : PrimOp} {args : List (ExpHOL 64)} {s0 : State σ}
    (hord : RdOK s0) : HoareG σ X (YPre s0) (.primitive name op args) (YQ s0) := by
  have key := fun {s : State σ} (hp : YPre s0 s) => (⟨sr_of_bw hord hp, fun _ => hp, nb_none⟩ : YQ s0 none s)
  intro s hs hp
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.primitive name op args)]
  dsimp only
  intro hg
  split
  · rename_i heq
    simp only [heq] at hg
    exact absurd hg (by simp [Good])
  · rename_i vals heq
    split
    · rename_i heq2
      simp only [heq, heq2] at hg
      exact absurd hg (by simp [Good])
    · rename_i v heq2
      split
      · exact ⟨sr_of_bw hord hp, fun _ => hp, nb_none⟩
      · rename_i hv
        simp only [heq, heq2, hv] at hg
        exact absurd hg (by simp [Good])

theorem hoareG_skipY {s0 : State σ} (hord : RdOK s0) : HoareG σ X (YPre s0) .skip (YQ s0) :=
  hoareG_skip fun s _ hp => ⟨sr_of_bw hord hp, fun _ => hp, nb_none⟩

theorem hoareG_assignY {n : MlS} {e : ExpHOL 64} {s0 : State σ} (hord : RdOK s0) :
    HoareG σ X (YPre s0) (.assign .local n e) (YQ s0) :=
  hoareG_assign fun s _ hp v hv _ => ⟨sr_of_bw hord hp, fun _ => hp, nb_none⟩

theorem hoareG_returnY {e : ExpHOL 64} {s0 : State σ} (hord : RdOK s0) :
    HoareG σ X (YPre s0) (.return e) (YQ s0) :=
  hoareG_return fun s _ hp v hv => ⟨sr_of_bw hord hp, fun _ => hp, nb_ret _⟩

theorem hoareG_seqY {a b : ProgHOL 64} {s0 : State σ} (ha : HoareG σ X (YPre s0) a (YQ s0))
    (hb : HoareG σ X (YPre s0) b (YQ s0)) : HoareG σ X (YPre s0) (.seq a b) (YQ s0) :=
  hoareG_seq ha (fun r t _ hr _ h => h)
    (hoareG_pre hb fun t _ h => h.2.1 (Or.inl rfl))

theorem hoareG_decY {x : MlS} {sh : ShapeHOL} {e : ExpHOL 64} {body : ProgHOL 64} {s0 : State σ}
    (hord : RdOK s0) (h : HoareG σ X (YPre s0) body (YQ s0)) :
    HoareG σ X (YPre s0) (.dec x sh e body) (YQ s0) := by
  refine hoareG_dec fun s hs hp v hv hsh => ?_
  refine hoareG_conseq h (fun t _ ht => ?_) ?_
  · subst ht
    exact hp
  · intro r t _ _ hq
    exact ⟨sr_locals hq.1 rfl rfl, fun hr => hq.2.1 hr, hq.2.2⟩

theorem hoareG_whileY {c : ExpHOL 64} {body : ProgHOL 64} {s0 : State σ} (hord : RdOK s0)
    (hb : HoareG σ X (YPre s0) body (YQ s0)) : HoareG σ X (YPre s0) (.while c body) (YQ s0) := by
  refine hoareG_while (fun t h => h) ?_
    (fun s hs h hc => ⟨sr_of_bw hord h, fun _ => h, nb_none⟩)
  intro t hs hpre hgood
  have hq := hb t hs (hpre.1) hgood
  refine ⟨fun h0 => hq.2.1 (Or.inl h0), fun h1 => absurd h1 hq.2.2.2, fun h1 => absurd h1 hq.2.2.1, ?_⟩
  intro r' h0 _ _
  exact hq

theorem abn_not_nr {r : PanSemResultExact 64} (h : Abn r) :
    ¬ ((some r : Option (PanSemResultExact 64)) = none ∨ ∃ v, (some r : Option (PanSemResultExact 64)) =
      some (.returned v)) := by
  rintro (h' | ⟨v, h'⟩)
  · cases h'
  · exact abn_ne_returned h v (Option.some.inj h')

theorem modRd {s0 s : State σ} (hg : s.globals = s0.globals)
    (callee : HolFiniteMapExact MlS (ValueHOL 64)) {m m' : Mem}
    (h : ModifiesOnly (RdF (callEntryStateHOLFinite s callee)) m m') : ModifiesOnly (RdF s0) m m' := by
  have hg' : (callEntryStateHOLFinite s callee).globals = s0.globals := hg
  refine h.mono fun a ha => ?_
  rcases ha with ha | ⟨W, hW, hov⟩
  · exact Or.inl ha
  · exact Or.inr ⟨W, by rw [← gword_congr hg']; exact hW, hov⟩

theorem y_ret {s0 s st : State σ} {callee : HolFiniteMapExact MlS (ValueHOL 64)} (hord : RdOK s0)
    (hpre : YPre s0 s) (hSR : SR (callEntryStateHOLFinite s callee) st)
    (hg : st.globals = s.globals) : BWPost (RdF s0) s0 st :=
  ⟨hg.trans hpre.1, hpre.2.trans (modRd hpre.1 callee hSR.2.2)⟩

theorem y_sr {s0 s st : State σ} {callee : HolFiniteMapExact MlS (ValueHOL 64)} (hord : RdOK s0)
    (hpre : YPre s0 s) (hSR : SR (callEntryStateHOLFinite s callee) st) : SR s0 st :=
  sr_trans (sr_of_bw hord hpre) (show SR s st from hSR)

theorem hoareG_callY {f : MlS} {args : List (ExpHOL 64)} (hf : RdSpec σ X f) {s0 : State σ}
    (hord : RdOK s0) : HoareG σ X (YPre s0) (.call (some (none, none)) f args) (YQ s0) := by
  refine hoareG_callD hf ?_ ?_
  · intro s hs hpre vs hvs callee v st hR _
    obtain ⟨hSR, hret⟩ := hR (by simp [Good]) (rdok_entry hord hpre.1 callee)
    have hb := y_ret hord hpre hSR (hret ⟨v, rfl⟩)
    exact ⟨sr_locals (y_sr hord hpre hSR) rfl rfl, fun _ => hb, nb_none⟩
  · intro s hs hpre vs hvs callee r st hR _ habn
    obtain ⟨hSR, -⟩ := hR (abn_good habn) (rdok_entry hord hpre.1 callee)
    exact ⟨sr_locals (y_sr hord hpre hSR) rfl rfl, fun h => absurd h (abn_not_nr habn), nb_abn habn⟩

theorem hoareG_callAY {f x : MlS} {args : List (ExpHOL 64)} (hf : RdSpec σ X f) {s0 : State σ}
    (hord : RdOK s0) :
    HoareG σ X (YPre s0) (.call (some (some (.local, x), none)) f args) (YQ s0) := by
  refine hoareG_callA hf ?_ ?_
  · intro s hs hpre vs hvs callee v st hR _ hval
    obtain ⟨hSR, hret⟩ := hR (by simp [Good]) (rdok_entry hord hpre.1 callee)
    have hb := y_ret hord hpre hSR (hret ⟨v, rfl⟩)
    exact ⟨sr_locals (y_sr hord hpre hSR) rfl rfl, fun _ => hb, nb_none⟩
  · intro s hs hpre vs hvs callee r st hR _ habn
    obtain ⟨hSR, -⟩ := hR (abn_good habn) (rdok_entry hord hpre.1 callee)
    exact ⟨sr_locals (y_sr hord hpre hSR) rfl rfl, fun h => absurd h (abn_not_nr habn), nb_abn habn⟩

theorem hoareG_decCallY {f rn : MlS} {sh : ShapeHOL} {args : List (ExpHOL 64)} {k : ProgHOL 64}
    (hf : RdSpec σ X f) {s0 : State σ} (hord : RdOK s0)
    (hk : HoareG σ X (YPre s0) k (YQ s0)) :
    HoareG σ X (YPre s0) (.decCall rn sh f args k) (YQ s0) := by
  refine hoareG_decCall hf ?_ ?_
  · intro s hs hpre vs hvs callee v st hR _ hsh
    obtain ⟨hSR, hret⟩ := hR (by simp [Good]) (rdok_entry hord hpre.1 callee)
    have hb := y_ret hord hpre hSR (hret ⟨v, rfl⟩)
    refine hoareG_conseq (hoareG_pre hk (P' := fun t => t = setVarHOLFinite rn v
        { st with locals := s.locals }) (fun t _ ht => ?_)) (fun t _ ht => ?_) ?_
    · subst ht
      exact hb
    · exact ht
    · intro r t _ _ hq
      exact ⟨sr_locals hq.1 rfl rfl, hq.2.1, hq.2.2⟩
  · intro s hs hpre vs hvs callee r st hR _ habn
    obtain ⟨hSR, -⟩ := hR (abn_good habn) (rdok_entry hord hpre.1 callee)
    exact ⟨sr_locals (y_sr hord hpre hSR) rfl rfl, fun h => absurd h (abn_not_nr habn), nb_abn habn⟩

theorem hoareG_tailY {f : MlS} {args : List (ExpHOL 64)} (hf : RdSpec σ X f) {s0 : State σ}
    (hord : RdOK s0) : HoareG σ X (YPre s0) (.call none f args) (YQ s0) := by
  refine hoareG_tailCall hf ?_ ?_
  · intro s hs hpre vs hvs callee v st hR _
    obtain ⟨hSR, hret⟩ := hR (by simp [Good]) (rdok_entry hord hpre.1 callee)
    have hb := y_ret hord hpre hSR (hret ⟨v, rfl⟩)
    exact ⟨sr_locals (y_sr hord hpre hSR) rfl rfl, fun _ => hb, nb_ret _⟩
  · intro s hs hpre vs hvs callee r st hR _ habn
    obtain ⟨hSR, -⟩ := hR (abn_good habn) (rdok_entry hord hpre.1 callee)
    exact ⟨sr_locals (y_sr hord hpre hSR) rfl rfl, fun h => absurd h (abn_not_nr habn), nb_abn habn⟩

def PureR (S : List MlS) : ProgHOL 64 → Bool
  | .skip => true
  | .dec _ _ _ b => PureR S b
  | .assign .local _ _ => true
  | .primitive _ _ _ => true
  | .seq a b => PureR S a && PureR S b
  | .ite _ a b => PureR S a && PureR S b
  | .while _ b => PureR S b
  | .return _ => true
  | .raise _ _ => true
  | .decCall _ _ f _ k => S.contains f && PureR S k
  | .call none f _ => S.contains f
  | .call (some (none, none)) f _ => S.contains f
  | .call (some (some (.local, _), none)) f _ => S.contains f
  | _ => false

theorem hoareG_pureR {S : List MlS} (hS : ∀ f ∈ S, RdSpec σ X f) {s0 : State σ} (hord : RdOK s0) :
    ∀ (p : ProgHOL 64), PureR S p = true → HoareG σ X (YPre s0) p (YQ s0)
  | .skip, _ => hoareG_skipY hord
  | .dec x sh e b, h => hoareG_decY hord (hoareG_pureR hS hord b h)
  | .assign .local n e, _ => hoareG_assignY hord
  | .assign .global n e, h => by simp [PureR] at h
  | .primitive n op args, _ => hoareG_primY hord
  | .seq a b, h => by
      simp only [PureR, Bool.and_eq_true] at h
      exact hoareG_seqY (hoareG_pureR hS hord a h.1) (hoareG_pureR hS hord b h.2)
  | .ite c a b, h => by
      simp only [PureR, Bool.and_eq_true] at h
      exact hoareG_ite (hoareG_pre (hoareG_pureR hS hord a h.1) (fun s _ hh => hh.1))
        (hoareG_pre (hoareG_pureR hS hord b h.2) (fun s _ hh => hh.1))
  | .while c b, h => by
      simp only [PureR] at h
      exact hoareG_whileY hord (hoareG_pureR hS hord b h)
  | .return e, _ => hoareG_returnY hord
  | .raise x e, _ => hoareG_raiseY hord
  | .decCall x sh f args k, h => by
      simp only [PureR, Bool.and_eq_true, List.contains_iff_mem] at h
      exact hoareG_decCallY (hS f h.1) hord (hoareG_pureR hS hord k h.2)
  | .call none f args, h => by
      simp only [PureR, List.contains_iff_mem] at h
      exact hoareG_tailY (hS f h) hord
  | .call (some (none, none)) f args, h => by
      simp only [PureR, List.contains_iff_mem] at h
      exact hoareG_callY (hS f h) hord
  | .call (some (some (.local, x), none)) f args, h => by
      simp only [PureR, List.contains_iff_mem] at h
      exact hoareG_callAY (hS f h) hord
  | .store .., h => by simp [PureR] at h
  | .store32 .., h => by simp [PureR] at h
  | .storeByte .., h => by simp [PureR] at h
  | .break, h => by simp [PureR] at h
  | .continue, h => by simp [PureR] at h
  | .call (some (some (.global, _), _)) _ _, h => by simp [PureR] at h
  | .call (some (some (.local, _), some _)) _ _, h => by simp [PureR] at h
  | .call (some (none, some _)) _ _, h => by simp [PureR] at h
  | .extCall .., h => by simp [PureR] at h
  | .shMemLoad .., h => by simp [PureR] at h
  | .shMemStore .., h => by simp [PureR] at h
  | .tick, h => by simp [PureR] at h
  | .annot .., h => by simp [PureR] at h

/-- A read-only function, from its code. -/
theorem rdSpec_of_pureR {S : List MlS} (hS : ∀ f ∈ S, RdSpec σ X f) {f : MlS}
    {ps : List (MlS × ShapeHOL)} {body : ProgHOL 64} {rsh : ShapeHOL}
    (hcode : X.code.lookup f = some (ps, body, rsh)) (hpure : PureR S body = true) :
    RdSpec σ X f := by
  intro vs body' callee rs hl s0 hs hloc r hr hg hord
  obtain ⟨ps', hps'⟩ := lookupCode_some' hl
  have hbody : body' = body := by
    have := hps'
    rw [hcode] at this
    simp only [Option.some.injEq, Prod.mk.injEq] at this
    exact this.2.1.symm
  subst hbody
  have h : HoareG σ X (fun t => t = s0) body' (YQ s0) :=
    hoareG_conseq (hoareG_pureR hS hord body' hpure)
      (fun t _ ht => by subst ht; exact ⟨rfl, fun _ _ => rfl⟩) (fun _ _ _ _ h => h)
  have := h s0 hs rfl (by rw [hr]; exact hg)
  rw [hr] at this
  exact ⟨this.1, fun ⟨v, hv⟩ => (this.2.1 (Or.inr ⟨v, by rw [hv]⟩)).1⟩

theorem rdSpec_trap_with (hC : X.code.lookup = guestCode) : RdSpec σ X (nm "trap_with") :=
  rdSpec_of_strong ((funSpec_trap_with hC).mono fun vs s r t h hg _ =>
    ⟨(h hg).2.2, fun a _ => by rw [(h hg).2.1]⟩)

end InitECandidate.Solver.MemSafe.Aw
