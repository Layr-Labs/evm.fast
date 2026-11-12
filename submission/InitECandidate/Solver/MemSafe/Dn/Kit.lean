import InitECandidate.Solver.MemSafe.Rec.TxRecKit
import InitECandidate.Solver.MemSafe.Integ.DecodeAccount

set_option autoImplicit false

/-!
# Statement rules for the decoder proofs

The block of `Rec.DI` is unused here (`Ar = 0`, `n = 0`: `BlkF` is vacuous); the client
predicate `E` carries the decoder's facts.

* `DR a L E Rv`: a statement post — a normal end in `DI a 0 0 L E`, any other end in `NQ a Rv`
  (so early `return`s inside branches compose: `hoareG_seqR`, `hoareG_seqRR`, `dr_of_dq`, `dr_of_nq`).
* `hoareG_tryDI`: `try x = f(args) catch eid => hv { hp }` for a capability-summary callee with
  `any` parameters, transporting `E` through the call.
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Dn
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.MptH (BlkF)
open InitECandidate.Solver.MemSafe.Node (NQ nq_of_abn nq_locals)

variable {σ : Type} {X : Ctx 64}

/-- The empty block. -/
theorem blkF00 {Γ : Gam} {q : Ptrs} : BlkF 0 0 Γ q := fun x hx => by
  have := hx.2.2; simp at this

theorem nob00 {a : Act σ} : ∀ x : BitVec 64, Overlap (0 : BitVec 64).toNat 0 x → ¬ a.p0.Allocated x.toNat :=
  fun x hx => by have := hx.2.2; simp at this

/-- **The statement post** with early ends. -/
def DR (a : Act σ) (L : LocalsH → Prop) (E : Gam → Ptrs → Mem → LocalsH → Prop)
    (Rv : Gam → Ptrs → ValueHOL 64 → Prop) (r : Option (PanSemResultExact 64)) (t : State σ) :
    Prop :=
  (r = none → DI a 0 0 L E t) ∧ (r ≠ none → NQ a Rv r t)

theorem dr_of_dq {a : Act σ} {L : LocalsH → Prop} {E : Gam → Ptrs → Mem → LocalsH → Prop}
    {Rv : Gam → Ptrs → ValueHOL 64 → Prop} {r : Option (PanSemResultExact 64)} {t : State σ}
    (h : DQ a 0 0 L E r t) : DR a L E Rv r t :=
  ⟨h.1, fun hr => nq_of_abn r t hr h.2⟩

theorem dr_of_nq {a : Act σ} {L : LocalsH → Prop} {E : Gam → Ptrs → Mem → LocalsH → Prop}
    {Rv : Gam → Ptrs → ValueHOL 64 → Prop} {r : Option (PanSemResultExact 64)} {t : State σ}
    (h : NQ a Rv r t) : DR a L E Rv r t :=
  ⟨fun hr => absurd hr h.1, fun _ => h⟩

theorem hoareG_liftDQ {a : Act σ} {P : State σ → Prop} {c : ProgHOL 64} {L : LocalsH → Prop}
    {E : Gam → Ptrs → Mem → LocalsH → Prop} {Rv : Gam → Ptrs → ValueHOL 64 → Prop}
    (h : HoareG σ X P c (DQ a 0 0 L E)) : HoareG σ X P c (DR a L E Rv) :=
  hoareG_conseq h (fun _ _ h => h) (fun _ _ _ _ h => dr_of_dq h)

theorem hoareG_liftNQ {a : Act σ} {P : State σ → Prop} {c : ProgHOL 64} {L : LocalsH → Prop}
    {E : Gam → Ptrs → Mem → LocalsH → Prop} {Rv : Gam → Ptrs → ValueHOL 64 → Prop}
    (h : HoareG σ X P c (NQ a Rv)) : HoareG σ X P c (DR a L E Rv) :=
  hoareG_conseq h (fun _ _ h => h) (fun _ _ _ _ h => dr_of_nq h)

theorem hoareG_seqR {a : Act σ} {P : State σ → Prop} {c k : ProgHOL 64} {L : LocalsH → Prop}
    {E : Gam → Ptrs → Mem → LocalsH → Prop} {Rv : Gam → Ptrs → ValueHOL 64 → Prop}
    (hc : HoareG σ X P c (DR a L E Rv)) (hk : HoareG σ X (DI a 0 0 L E) k (NQ a Rv)) :
    HoareG σ X P (.seq c k) (NQ a Rv) :=
  hoareG_seq hc (fun r t _ hr _ h => h.2 hr) (hoareG_pre hk fun _ _ h => h.1 rfl)

theorem hoareG_seqRR {a : Act σ} {P : State σ → Prop} {c k : ProgHOL 64} {L L' : LocalsH → Prop}
    {E E' : Gam → Ptrs → Mem → LocalsH → Prop} {Rv : Gam → Ptrs → ValueHOL 64 → Prop}
    (hc : HoareG σ X P c (DR a L E Rv)) (hk : HoareG σ X (DI a 0 0 L E) k (DR a L' E' Rv)) :
    HoareG σ X P (.seq c k) (DR a L' E' Rv) :=
  hoareG_seq hc (fun r t _ hr _ h => ⟨fun h' => absurd h' hr, fun _ => h.2 hr⟩)
    (hoareG_pre hk fun _ _ h => h.1 rfl)

theorem hoareG_skipR {a : Act σ} {L : LocalsH → Prop} {E : Gam → Ptrs → Mem → LocalsH → Prop}
    {Rv : Gam → Ptrs → ValueHOL 64 → Prop} {P : State σ → Prop}
    (hP : ∀ s : State σ, P s → DI a 0 0 L E s) : HoareG σ X P .skip (DR a L E Rv) :=
  hoareG_skip fun s _ h => ⟨fun _ => hP s h, fun hr => absurd rfl hr⟩

/-- **`try x = f(args) catch eid => hv { hp }`** for a summarised `any`-parameter callee. -/
theorem hoareG_tryDI {a : Act σ} (ha : ActOK a X) {f x eid hv : MlS} {hp : ProgHOL 64}
    {args : List (ExpHOL 64)} {sg' : Sig} (hf : CSumm σ X a.Cb a.H f sg' [])
    (hps : ∀ pt ∈ sg'.params, pt = .any) (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw)
    (hgr : sg'.grows = true → a.sg.grows = true) (heid : eid ≠ trapErr)
    {L : LocalsH → Prop} {E : Gam → Ptrs → Mem → LocalsH → Prop}
    (hlen : ∀ s : State σ, InCtx s X → L s.locals → ∀ vs, evs s args = some vs →
      sg'.params.length = vs.length)
    (hE : ∀ (s st : State σ) (Γ Γ' : Gam) (q q' : Ptrs), COut a sg' Γ Γ' q q' s st →
      E Γ q s.memory s.globals → E Γ' q' st.memory st.globals)
    (hLx : ∀ (s : State σ) v, L s.locals → L (setVarHOLFinite x v s).locals)
    (hLh : ∀ (s : State σ) v, L s.locals → L (setVarHOLFinite hv v s).locals)
    (hh : HoareG σ X (DI a 0 0 L E) hp (DQ a 0 0 L E)) :
    HoareG σ X (DI a 0 0 L E) (.call (some (some (.local, x), some (eid, hv, hp))) f args)
      (DQ a 0 0 L E) := by
  refine MemSafe.hoareG_callH (summ_funSpec hf) ?_ ?_ ?_
  · intro s hs ⟨hL, Γ, p, he, hh0, _, _, hEs⟩ vs hvs callee v st hR _
    obtain ⟨Γ', q', he', hh', hmo, hnf, hnfp, hmod, -⟩ := heap_callM ha hh0 hR (by simp [Good])
      (by simp [Abortive]) (argsOK_any hps (hlen s hs hL vs hvs)) hps hgw hgr
    have hE' := hE s st Γ Γ' p q' ⟨hh0, he', hh', hmo, hnf, hnfp, hmod⟩ hEs
    refine ⟨fun h => absurd h (by simp), fun k x' hk _ => ?_⟩
    simp only [Option.some.injEq, Prod.mk.injEq] at hk
    obtain ⟨rfl, rfl⟩ := hk
    exact ⟨fun _ => ⟨hLx { st with locals := s.locals } v hL, Γ', q', ext_trans he he',
      heap_congr (s := st) ha.hH rfl rfl rfl rfl hh', blkF00, nob00, hE'⟩,
      fun r' h => absurd h (by simp)⟩
  · intro s hs ⟨hL, Γ, p, he, hh0, _, _, hEs⟩ vs hvs callee v st hR _
    obtain ⟨Γ', q', he', hh', hmo, hnf, hnfp, hmod, -⟩ := heap_callM ha hh0 hR (by simp [Good])
      (by simpa [Abortive] using heid) (argsOK_any hps (hlen s hs hL vs hvs)) hps hgw hgr
    have hE' := hE s st Γ Γ' p q' ⟨hh0, he', hh', hmo, hnf, hnfp, hmod⟩ hEs
    refine hoareG_pre hh fun t _ ht => ?_
    subst ht
    exact ⟨hLh { st with locals := s.locals } v hL, Γ', q', ext_trans he he',
      heap_congr (s := st) ha.hH rfl rfl rfl rfl hh', blkF00, nob00, hE'⟩
  · intro s hs ⟨hL, Γ, p, he, hh0, _, _, hEs⟩ vs hvs callee r st hR _ habn _
    refine ⟨fun h => absurd h (by simp), fun r' hr' => ?_⟩
    cases hr'
    refine ⟨habn, fun hna => ?_⟩
    obtain ⟨Γ', q', he', hh', -⟩ := heap_callM ha hh0 hR (abn_good' habn) hna
      (argsOK_any hps (hlen s hs hL vs hvs)) hps hgw hgr
    exact ⟨Γ', q', ext_trans he he', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh'⟩

end InitECandidate.Solver.MemSafe.Dn

#print axioms InitECandidate.Solver.MemSafe.Dn.hoareG_tryDI
#print axioms InitECandidate.Solver.MemSafe.Dn.hoareG_seqR
