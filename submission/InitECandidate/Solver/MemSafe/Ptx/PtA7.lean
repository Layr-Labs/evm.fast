import InitECandidate.Solver.MemSafe.Ptx.PtA6

/-!
# F3d: table calls whose parameters are all `any` (`hdecAny`, `hn_callAny`), guards
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

theorem evs_length {s : State σ} : ∀ {args : List (ExpHOL 64)} {vs : List (ValueHOL 64)},
    evs s args = some vs → vs.length = args.length
  | [], vs, h => by
      have h0 : evs s ([] : List (ExpHOL 64)) = some [] := Spec.evs_nil
      rw [h0] at h; cases h; rfl
  | a :: as, vs, h => by
      obtain ⟨v, vs', rfl, -, h'⟩ := Spec.evs_cons_inv h
      simp only [List.length_cons, evs_length h']

/-- `var rn = f(args); k` for a table call with parameters all `any` and no capabilities. -/
theorem hdecAny {E : PtE σ} {En : Env} {S : FS} {f : MlS} {sg : Sig} {args : List (ExpHOL 64)} {rn : MlS}
    {sh : ShapeHOL} {k : ProgHOL 64} {QT : Option (PanSemResultExact 64) → State σ → Prop} (hQT : ResIns rn QT)
    (hf : CSumm σ guestCtx guestC (HR σ) f sg []) (hps : ∀ pt ∈ sg.params, pt = .any) (hgw : sg.gw = [])
    (hfin : ptAllNames.contains f = true) (hlen : sg.params.length = args.length)
    (hGl : ∀ g ty, S (Fct.gobj g ty) → cW.contains g = false)
    (hk : ∀ v, shapeEqHOL (shapeOfHOLExact v) sh = true →
      Hoare σ guestCtx (PA E (En.set rn v) S) k QT) :
    Hoare σ guestCtx (PA E En S) (.decCall rn sh f args k) QT := by
  refine hdecCallC hQT hf (callOK_any csOK_nil hps hgw hfin (fun s _ vs hvs => by rw [hlen, evs_length hvs]) hGl)
    (fun _ _ => False) (fun _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ g hg => hg.elim) ?_
  intro v hsh
  exact hoare_pre (hk v hsh) fun t _ ht => pa_mono ht (fun x v h => h) (fun f hf => Or.inl hf)

/-- `f(args)` (result dropped) for a table call with parameters all `any` and no capabilities. -/
theorem hn_callAny {E : PtE σ} {En : Env} {S : FS} {f : MlS} {sg : Sig} {args : List (ExpHOL 64)}
    (hf : CSumm σ guestCtx guestC (HR σ) f sg []) (hps : ∀ pt ∈ sg.params, pt = .any) (hgw : sg.gw = [])
    (hfin : ptAllNames.contains f = true) (hlen : sg.params.length = args.length)
    (hGl : ∀ g ty, S (Fct.gobj g ty) → cW.contains g = false) :
    HN (PA E En S) (.call (some (none, none)) f args) (PA E En S) :=
  hn_callC hf (callOK_any csOK_nil hps hgw hfin (fun s _ vs hvs => by rw [hlen, evs_length hvs]) hGl)

/-- `if c1 { if c2 { throw } }`: the continuation sees the state unchanged. -/
theorem hguard2 {E : PtE σ} {En : Env} {S : FS} {c1 c2 : ExpHOL 64} {x : MlS} {ex : ExpHOL 64} :
    HN (PA E En S) (.ite c1 (.ite c2 (.raise x ex) .skip) .skip) (PA E En S) :=
  hn_ite (hn_post (hn_pre hguard (fun s _ h => h.1)) (fun t _ h => h.1))
    (hn_pre hn_skip (fun s _ h => h.1))

end InitECandidate.Solver.MemSafe.Ptx
