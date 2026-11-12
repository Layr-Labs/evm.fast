import InitECandidate.Solver.Compiler.FrontEnd.Basic
import Flapjack.Pancake.Proofs.PanStructs.CompileTopSemanticsDeclsExact

/-!
# `pan_structs` at the clock level

Flapjack's `CompileCorrectExact.compileCorrectExact`
(`Pancake/Proofs/PanStructs/CompileCorrectExact.lean`) maps a source run `(res, post)` to the
target run `(convertResHOL res, convertStateExact ctx post)` from `convertStateExact ctx source`;
`convertStateExact` changes neither the clock nor the FFI state, so the pass is lock-step
(offset `0`, result map `convertResHOL`). `SemanticsEq.semanticsEq` uses this with `refine ⟨0, _⟩`
and drops the clock; `compileTopSemanticsDeclsExact` is copied here with the clock kept.
-/

namespace InitECandidate.Solver.Compiler.FrontEnd

open Flapjack Flapjack.Pancake.PanLang
open Flapjack.Pancake.PanStructs.CompileShapeExact
open Flapjack.Pancake.Proofs.PanStructs
open Flapjack.Pancake.Proofs.PanStructs.ConvertState
open Flapjack.Pancake.Proofs.PanStructs.ShapeMap
open Flapjack.Pancake.Proofs.PanStructs.StructInfosOkExact

set_option autoImplicit false

variable {width : Nat} [NeZero width] {σ : Type}

theorem panResMapOk_convertResHOL : PanResMapOk (convertResHOL (width := width)) := by
  intro r ⟨he, ht⟩
  rcases r with _ | (_ | _ | _ | _ | _ | _ | _) <;> simp_all [convertResHOL, PanTerminates]

/-- `pan_structs` entry runs (the per-clock content of `SemanticsEq.semanticsEq`, whose
hypotheses other than non-`Fail` are kept). -/
theorem panStructs_runStep (source : PanSemStateFiniteExact width σ) (start : MlS)
    (context : ContextExact)
    (hstructs : context.structs = source.structs.map (fun entry => (entry.1, entry.2.fields)))
    (hlocals : source.locals = HolFiniteMapExact.empty)
    (hfields : feveryHOL (fun entry => valueFldsOkHOLExact source.structs entry.2) source.globals)
    (hwf : feveryHOL (fun entry => isWfShapeValueHOLExact source.structs entry.2) source.globals)
    (hclocals : context.locals = [])
    (hglobals : shapeMap context.globals =
      source.globals.map2 (fun entry => shapeOfHOLExact entry.2))
    (hinfos : structInfosOkHOLExact source.structs) :
    PanRunStep source start (convertStateExact context source) start convertResHOL 0 := by
  intro k r s1 hrun hr
  have hlocalfields : feveryHOL (fun entry => valueFldsOkHOLExact source.structs entry.2)
      source.locals := by
    simp [hlocals, feveryHOL, HolFiniteMapExact.empty]
  have hlocalwf : feveryHOL (fun entry => isWfShapeValueHOLExact source.structs entry.2)
      source.locals := by
    simp [hlocals, feveryHOL, HolFiniteMapExact.empty]
  have hlocalmap : shapeMap context.locals =
      source.locals.map2 (fun entry => shapeOfHOLExact entry.2) := by
    rw [hclocals, hlocals]
    apply HolFiniteMapExact.ext
    rfl
  have hsim := CompileCorrectExact.compileCorrectExact (.call none start [])
    { source with clock := k } s1 context r
    ⟨hrun, hstructs, hlocalfields, hfields, hlocalwf, hwf, hinfos, hlocalmap, hglobals, hr.1⟩
  obtain ⟨htarget, _⟩ := hsim
  have hcomp : compileProgExact context (.call none start [] : ProgHOL width) =
      .call none start [] := by
    simp [compileProgExact, compileExpsExact]
  rw [hcomp] at htarget
  exact ⟨convertStateExact context s1, htarget, rfl, rfl⟩

/-- **`pan_structs`, clock level** (declarations form of `compileTopSemanticsDeclsExact`,
whose hypotheses other than non-`Fail` are kept): lock-step, result map `convertResHOL`,
offset `0`. -/
theorem panStructs_lockStep (source : PanSemStateFiniteExact width σ) (start : MlS)
    (code : List (DeclHOL width)) (hlocals : source.locals = HolFiniteMapExact.empty)
    (hcode : source.code = HolFiniteMapExact.empty)
    (hglobals : source.globals = HolFiniteMapExact.empty) :
    PanLockStep source start code
      { source with eshapes := source.eshapes.map2 (fun entry =>
          compileShapeExact (getNamesExact { structs := [], locals := [], globals := [] } code).structs
            entry.2) }
      start (compileTopExact code) convertResHOL 0 := by
  classical
  intro post hpost
  unfold panDeclsInit at hpost ⊢
  rcases hnames : decsStcnamesHOLExact [] code with _ | structs
  · simp [hnames] at hpost
  simp only [hnames] at hpost
  let context := getNamesExact { structs := [], locals := [], globals := [] } code
  have hctx := decsStcnamesToGetNames [] code structs
    ({ structs := [], locals := [], globals := [] } : ContextExact) ⟨hnames, rfl⟩
  have hctxstructs : context.structs = structs.map (fun entry => (entry.1, entry.2.fields)) := by
    simp [context, hctx]
  have hctxlocals : context.locals = [] := by simp [context, hctx]
  have hctxglobals : context.globals = [] := by simp [context, hctx]
  have hinfos := decsStcnamesInfosOk [] code structs ()
    ⟨hnames, by simp [structInfosOkHOLExact]⟩
  have hmapempty : ∀ {α β γ : Type} (f : α × β → γ),
      HolFiniteMapExact.map2 f (HolFiniteMapExact.empty : HolFiniteMapExact α β) =
        HolFiniteMapExact.empty := by
    intro α β γ f
    apply HolFiniteMapExact.ext
    rfl
  have hfields : feveryHOL (fun entry => valueFldsOkHOLExact structs entry.2) source.globals := by
    simp [hglobals, feveryHOL, HolFiniteMapExact.empty]
  have hwf : feveryHOL (fun entry => isWfShapeValueHOLExact structs entry.2) source.globals := by
    simp [hglobals, feveryHOL, HolFiniteMapExact.empty]
  have hshapes : shapeMap context.globals =
      source.globals.map2 (fun entry => shapeOfHOLExact entry.2) := by
    rw [hctxglobals, hglobals, hmapempty]
    rfl
  rcases hcompile : compileDeclsExact context code with ⟨compiled, finalContext⟩
  have hsim := CompileDeclsCorrectExact.compileDeclsCorrectExact
    { source with structs := structs } code post context finalContext compiled
    ⟨hpost, hctxstructs, hctxlocals, hinfos, hfields, hwf, hshapes, hcompile⟩
  obtain ⟨hrun, globals, hfinal, hpostfields, hpostwf, hpoststructs, hpostlocals, hpostshapes⟩ :=
    hsim
  have htop : compileTopExact code = compiled := by
    change (compileDeclsExact context code).1 = compiled
    rw [hcompile]
  have hcompilednames := decsStcnamesCompileDecls context code []
  rw [hcompile] at hcompilednames
  have hboot : convertStateExact finalContext { source with structs := structs } =
      { source with eshapes := source.eshapes.map2 (fun entry =>
          compileShapeExact context.structs entry.2), structs := [] } := by
    simp [convertStateExact, convertCodeExact, convertEshapesExact,
      hlocals, hglobals, hcode, hmapempty, hfinal]
  rw [htop, hcompilednames]
  simp only
  have htargetRun : @PanSemStateFiniteExact.evaluateDeclsHOLFinite width σ _
      { source with eshapes := source.eshapes.map2 (fun entry =>
          compileShapeExact context.structs entry.2), structs := [] }
      (fun address => Classical.propDecidable (source.memaddrs address)) compiled =
      some (convertStateExact finalContext post) := by
    exact (congrArg (fun state : PanSemStateFiniteExact width σ =>
      @PanSemStateFiniteExact.evaluateDeclsHOLFinite width σ _ state
        (fun address => Classical.propDecidable (state.memaddrs address)) compiled)
      hboot).symm.trans hrun
  refine ⟨convertStateExact finalContext post, htargetRun, ?_⟩
  apply panStructs_runStep post start finalContext
  · simpa [hfinal, hpoststructs] using hctxstructs
  · simpa [hpostlocals] using hlocals
  · simpa [hpoststructs] using hpostfields
  · simpa [hpoststructs] using hpostwf
  · simpa [hfinal] using hctxlocals
  · simpa [hfinal] using hpostshapes
  · simpa [hpoststructs] using hinfos

end InitECandidate.Solver.Compiler.FrontEnd
