import InitECandidate.Solver.MemSafe.Ptx.PtC3

/-!
# F3d: more call rules (`hdecNoNF`, `hn_callAssign`)
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

/-- `var rn = f(args); k` for a table call with a given `CallOK` and no new facts. -/
theorem hdecNoNF {E : PtE σ} {En : Env} {S : FS} {f : MlS} {sg : Sig} {cs : List Cap} {args : List (ExpHOL 64)}
    {rn : MlS} {sh : ShapeHOL} {k : ProgHOL 64} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    (hQT : ResIns rn QT) (hf : CSumm σ guestCtx guestC (HR σ) f sg cs) (h : CallOK E En S f sg cs args)
    (hk : ∀ v, shapeEqHOL (shapeOfHOLExact v) sh = true → Hoare σ guestCtx (PA E (En.set rn v) S) k QT) :
    Hoare σ guestCtx (PA E En S) (.decCall rn sh f args k) QT := by
  refine hdecCallC hQT hf h (fun _ _ => False)
    (fun _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ g hg => hg.elim) ?_
  intro v hsh
  exact hoare_pre (hk v hsh) fun t _ ht => pa_mono ht (fun x v h => h) (fun f hf => Or.inl hf)

/-- `x = f(args)` for an untracked local `x`. -/
theorem hn_callAssign {E : PtE σ} {En : Env} {S : FS} {f : MlS} {sg : Sig} {cs : List Cap} {args : List (ExpHOL 64)}
    {x : MlS} (hf : CSumm σ guestCtx guestC (HR σ) f sg cs) (h : CallOK E En S f sg cs args) (hx : En x = none) :
    HN (PA E En S) (.call (some (some (.local, x), none)) f args) (PA E En S) := by
  refine hoare_callA ((sumSpecA_relX hf).and (funSpec_pt_gw_all guestCtx_code h.fin)) ?_
  intro s hs hpa vs hvs callee v st ⟨hR, hgl⟩ hst hvalid
  obtain ⟨⟨D, Γ, p, hr, hD, hL⟩, hlk⟩ := hpa
  have hpa : PA E En S s := ⟨⟨D, Γ, p, hr, hD, hL⟩, hlk⟩
  obtain ⟨Γ', p', hc, hrun, -, hL', -⟩ :=
    call_core hR hgl h.gw h.jo h.jn (fun _ _ Γ a hw => capPW_st h.csok.st hw) hr hL
      (h.argsok s hpa vs hvs D Γ p hr hL) (preC callee h.csok hr) (h.memok s hpa vs hvs) h.globok
  exact ⟨rfl, pa_set_other ⟨⟨D, Γ', p', hrun, hD, hL'⟩, hlk⟩ hx v⟩

end InitECandidate.Solver.MemSafe.Ptx
