import InitECandidate.Solver.MemSafe.Init.Main4

/-!
# Init: `main`'s walk, part 5 (the `decode_host_input` call with its handler)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Init
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Eb InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Aw

variable {σ : Type}

/-- Before `decode_host_input`: the init invariant, and `si` a word. -/
def PI (s : State σ) : Prop := (∃ Γ, WI Γ [] s) ∧ ∃ w0 : BitVec 64, s.locals.lookup (nm "si") = some (.val (.word w0))

/-- The handler of `decode_host_input` halts: it never ends without a result. -/
theorem hoare_handler {P : State σ → Prop} {sh : ShapeHOL} {n : MlS} {args : List (ExpHOL 64)} {a b : ExpHOL 64}
    {args2 : List (ExpHOL 64)} {c1 c2 c3 c4 e : ExpHOL 64} :
    Hoare σ guestCtx P
      (.decCall n sh (nm "serialize_result") args
        (.seq (.storeByte a b) (.seq (.call (some (none, none)) (nm "output_write") args2)
          (.seq (.extCall (nm "halt") c1 c2 c3 c4) (.return e)))))
      (fun r t => r ≠ none) := by
  refine Spec.hoare_decCallS (funSpec_true _) (fun s hs hp vs hvs callee v st hR hst hsh => ?_)
  refine Spec.hoare_seq (R := fun _ _ => True) (fun s hs hp ht => trivial) (fun r t _ hr _ _ => hr) ?_
  refine Spec.hoare_seq (R := fun _ _ => True) (fun s hs hp ht => trivial) (fun r t _ hr _ _ => hr) ?_
  refine Spec.hoare_seq (R := fun _ _ => True) (fun s hs hp ht => trivial) (fun r t _ hr _ _ => hr) ?_
  exact Spec.hoare_return (fun s hs hp v hv => by simp)

theorem wi_nptr_small {Γ : Gam} {pn : List MlS} {s : State σ} {g : MlS} {t' : Nat} (hW : WI Γ pn s)
    (hk : guestC.GT.lookup g = some (.nptr t')) (ht : t' ∉ BTys) (hg : g ∉ pn) :
    ∃ w, gword s g = some w ∧ w.toNat < nullMax := by
  obtain ⟨p, hp, ho, hl, hbt, hgl⟩ := hW
  obtain ⟨v, hv, -, hf⟩ := hgl g _ hk
  refine ⟨v, hv, ?_⟩
  rcases hf hg with h | ⟨o, ho', -, hty⟩
  · exact h
  · exact absurd (hty ▸ hbt o ho') ht

theorem evCc_of_wi {Γ : Gam} {s : State σ} (hW : WI Γ [] s) : EvCc s :=
  ⟨wi_nptr_small (t' := tEV) hW (by decide) (by decide) (by simp), wi_nptr_small (t' := tCK) hW (by decide) (by decide) (by simp)⟩

theorem ptrs_keep {s t : State σ} {p p' : Ptrs} (hp : ptrsOf s = some p) (hp' : ptrsOf t = some p')
    (hF : t.globals.lookup gFrame = s.globals.lookup gFrame)
    (hS : t.globals.lookup gScratch = s.globals.lookup gScratch) : p'.fp = p.fp ∧ p'.sp = p.sp := by
  obtain ⟨a, b, c, ha, hb, hc, rfl⟩ := AllocImpl.ptrsOf_some hp
  obtain ⟨a', b', c', ha', hb', hc', rfl⟩ := AllocImpl.ptrsOf_some hp'
  have e1 : b' = b := by
    have := AllocImpl.lookup_of_gword hb'
    have h2 := AllocImpl.lookup_of_gword hb
    rw [hF, h2] at this
    cases this; rfl
  have e2 : c' = c := by
    have := AllocImpl.lookup_of_gword hc'
    have h2 := AllocImpl.lookup_of_gword hc
    rw [hS, h2] at this
    cases this; rfl
  subst e1 e2
  exact ⟨rfl, rfl⟩

theorem hoare_decode {sh : ShapeHOL} {n : MlS} {args : List (ExpHOL 64)} {a b : ExpHOL 64}
    {args2 : List (ExpHOL 64)} {c1 c2 c3 c4 e : ExpHOL 64} :
    Hoare σ guestCtx PI
      (.call (some (some (.local, nm "si"), some (nm "SszErr", nm "err_code",
        .decCall n sh (nm "serialize_result") args
          (.seq (.storeByte a b) (.seq (.call (some (none, none)) (nm "output_write") args2)
            (.seq (.extCall (nm "halt") c1 c2 c3 c4) (.return e))))))) (nm "decode_host_input") [])
      (fun r t => r = none → PD t) := by
  refine Spec.hoare_callH (R := _)
    ((Dhi.sumSpecA_decode_host_input_guestR (σ := σ)).and ((funSpec_dh_keep gFrame (Or.inl rfl)).and
      ((funSpec_dh_keep gScratch (Or.inr rfl)).and (funSpec_be _)))) ?_ ?_
  · intro s hs ⟨⟨Γ, hWI⟩, w0, hw0⟩ vs hvs callee v st ⟨hS, hF, hSc, hbe⟩ hst
    refine ⟨(fun h => by cases h), fun k x hkx hvalid => ?_⟩
    intro _
    obtain ⟨rfl, rfl⟩ : .local = k ∧ nm "si" = x := by simpa using hkx
    obtain rfl : vs = [] := (Option.some.inj hvs).symm
    have hg : (callEntryStateHOLFinite s callee).globals = s.globals := rfl
    have hshape : shapeEqHOL (shapeOfHOLExact v) .one = true := by
      simpa [isValidValueHOLExact, lookupKvarHOLExact, hw0, shapeOfHOLExact] using hvalid
    obtain ⟨S, rfl⟩ := val_of_shapeEq_one' hshape
    have hG := G_of_wi hWI
    have hE := evCc_of_wi hWI
    have hG0 : G guestC (HR σ) Γ (callEntryStateHOLFinite s callee) :=
      Frames.G_congr Hooks.guestHooksR_lawful rfl hg rfl rfl hG
    obtain ⟨p, hp, hord, hL, hbt, -⟩ := hWI
    have hp0 : ptrsOf (callEntryStateHOLFinite s callee) = some p :=
      (AllocImpl.ptrsOf_congr (s := s) (t := callEntryStateHOLFinite s callee) hg).trans hp
    obtain ⟨Γ', p0, p', ⟨hps, hpt, hmono, hext, hnf, hG', -, hpg, -, hret⟩, -⟩ :=
      hS (by simp [Good]) (by simp [Abortive]) Γ hG0 ⟨p, hp0, ⟨rfl, fun i pt w hpt _ => by simp [Dhi.dhSig] at hpt⟩⟩ trivial
    obtain rfl : p0 = p := Option.some.inj (hps.symm.trans hp0)
    obtain ⟨hfp, hsp⟩ := ptrs_keep hp0 hpt hF hSc
    obtain ⟨p1, hp1, hord1, hL1, -⟩ := id hG'
    have e1 : p1 = p' := Option.some.inj (hp1.symm.trans hpt)
    rw [e1] at hord1 hL1
    have hbelow := below_of_fresh hL hbt hL1 hord1 hmono hnf hfp hsp
    have hfit := hret _ rfl 0 (.fits (.ptr tSI)) S (by simp [Dhi.dhSig]) (by simp [flattenHOL])
    obtain ⟨o, ho, hb, ht⟩ := hfit
    refine ⟨Γ', p', S, Frames.G_congr Hooks.guestHooksR_lawful rfl rfl rfl rfl hG', ?_, hpt, hbelow, ?_, o, ho, hb, ht⟩
    · obtain ⟨⟨e, he, he2⟩, ⟨c, hc, hc2⟩⟩ := hE
      have h1 := hpg nmEv nmEv_PG (by simp [Dhi.dhSig])
      have h2 := hpg nmCC nmCC_PG (by simp [Dhi.dhSig])
      refine ⟨⟨e, ?_, he2⟩, ⟨c, ?_, hc2⟩⟩
      · rw [Frames.gword_congr (s := st) (s' := setKvarHOLFinite .local (nm "si") (.val (.word S)) { st with locals := s.locals }) rfl nmEv]
        unfold gword at he ⊢; rw [h1]; exact he
      · rw [Frames.gword_congr (s := st) (s' := setKvarHOLFinite .local (nm "si") (.val (.word S)) { st with locals := s.locals }) rfl nmCC]
        unfold gword at hc ⊢; rw [h2]; exact hc
    · show (s.locals.update (nm "si", .val (.word S))).lookup (nm "si") = _
      exact lookup_update_self _ _ _
  · intro s hs hP vs hvs callee v st hR hst
    exact Spec.hoare_post hoare_handler (fun r t _ _ hr h0 => absurd h0 hr)

end InitECandidate.Solver.MemSafe.Init
