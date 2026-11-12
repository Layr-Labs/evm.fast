import InitECandidate.Solver.MemSafe.Ptx.PtD1

/-!
# F3e: more rules (`hdecW`, `hdecAnyU`, `hdecNoNFU`, `hdec_min`)
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

section rules
variable {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}

/-- `var n = e; body` for a one-word `e`: `n` is tracked as some word. -/
theorem hdecW {n : MlS} (hQT : ResIns n QT) {e : ExpHOL 64} {body : ProgHOL 64}
    (hk : ∀ w : BitVec 64, Hoare σ guestCtx (PA E (En.set n (.val (.word w))) S) body QT) :
    Hoare σ guestCtx (PA E En S) (.dec n .one e body) QT :=
  hdecK hQT fun s hs hP v hv hsh => by
    obtain ⟨w, rfl⟩ := val_of_shapeEq_one hsh
    exact hoare_pre (hk w) fun t _ ht => by subst ht; exact pa_set hP n _

/-- `var rn = f(args); k` with an untracked result and no new facts (all-`any` parameters). -/
theorem hdecAnyU {f : MlS} {sg : Sig} {args : List (ExpHOL 64)} {rn : MlS} {sh : ShapeHOL} {k : ProgHOL 64}
    (hQT : ResIns rn QT) (hf : CSumm σ guestCtx guestC (HR σ) f sg []) (hps : ∀ pt ∈ sg.params, pt = .any)
    (hgw : sg.gw = []) (hfin : ptAllNames.contains f = true) (hlen : sg.params.length = args.length)
    (hGl : ∀ g ty, S (Fct.gobj g ty) → cW.contains g = false) (hrn : En rn = none)
    (hk : Hoare σ guestCtx (PA E En S) k QT) :
    Hoare σ guestCtx (PA E En S) (.decCall rn sh f args k) QT :=
  hdecAny hQT hf hps hgw hfin hlen hGl fun v _ =>
    hoare_pre hk fun t _ ht => pa_mono ht (env_mono_set hrn v) (fun f h => h)

theorem hdecNoNFU {f : MlS} {sg : Sig} {cs : List Cap} {args : List (ExpHOL 64)} {rn : MlS} {sh : ShapeHOL}
    {k : ProgHOL 64} (hQT : ResIns rn QT) (hf : CSumm σ guestCtx guestC (HR σ) f sg cs)
    (h : CallOK E En S f sg cs args) (hrn : En rn = none) (hk : Hoare σ guestCtx (PA E En S) k QT) :
    Hoare σ guestCtx (PA E En S) (.decCall rn sh f args k) QT :=
  hdecNoNF hQT hf h fun v _ => hoare_pre hk fun t _ ht => pa_mono ht (env_mono_set hrn v) (fun f h => h)

theorem min_fin' : ptAllNames.contains (nm "min") = true := by decide_cbv

/-- `var mgas = min(a, b); k`: `mgas <= a`. -/
theorem hdec_min {rb eg : BitVec 64} {k : ProgHOL 64} {rn : MlS} (hQT : ResIns rn QT)
    (hrb : ∀ s : State σ, PA E En S s → EvI s (lv (nm "regular_budget")) (.val (.word rb)))
    (heg : ∀ s : State σ, PA E En S s → EvI s (lv (nm "execution_gas")) (.val (.word eg)))
    (hGl : ∀ g ty, S (Fct.gobj g ty) → cW.contains g = false)
    (hk : ∀ z : BitVec 64, Hoare σ guestCtx
      (PA E (En.set rn (.val (.word z))) (fun f => S f ∨ f = Fct.prop (z.toNat ≤ rb.toNat))) k QT) :
    Hoare σ guestCtx (PA E En S)
      (.decCall rn .one (nm "min") [lv (nm "regular_budget"), lv (nm "execution_gas")] k) QT := by
  refine hdecCallC2 hQT tab_min
    (callOK_any csOK_nil (by simp) rfl min_fin' (fun s _ vs hvs => by rw [evs_length hvs]; rfl) hGl)
    min_spec (fun v f => ∃ z, v = .val (.word z) ∧ f = Fct.prop (z.toNat ≤ rb.toNat)) ?_ ?_
  · intro s vs callee v st D Γ Γ' p p' hpa hvs hr hL hstep hrun hc hR2 hsh f ⟨z, hv, hf⟩
    subst hv hf
    obtain ⟨x, y, rfl, hx, hy⟩ := evs2 hvs
    have hx' := hrb s hpa x hx
    have hy' := heg s hpa y hy
    subst hx' hy'
    obtain ⟨z', hz', hle, -⟩ := hR2 _ rfl rb eg rfl
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hz'
    subst hz'
    exact hle
  · intro v hsh
    obtain ⟨z, rfl⟩ := val_of_shapeEq_one' hsh
    refine hoare_pre (hk z) fun t _ ht => pa_mono ht (fun x v h => h) ?_
    intro f hf
    rcases hf with hf | hf
    · exact Or.inl hf
    · exact Or.inr ⟨z, rfl, hf⟩

end rules
end InitECandidate.Solver.MemSafe.Ptx
