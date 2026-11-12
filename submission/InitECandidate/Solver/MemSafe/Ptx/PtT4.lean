import InitECandidate.Solver.MemSafe.Ptx.PtT3

/-!
# F3g: the tail's precondition `TlPre` and the first piece (`ptS114` to `ptS132`: gas accounting, the two `create_ether`)
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
open InitECandidate.Solver.MemSafe.AllocImpl (lookup_of_gword)

variable {σ : Type}

theorem udiv5_fin : ptAllNames.contains (nm "udiv_small5") = true := by decide_cbv
theorem max_fin : ptAllNames.contains (nm "max") = true := by decide_cbv
theorem cether_fin : ptAllNames.contains (nm "create_ether") = true := by decide_cbv

section comb
variable {A : TlA σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj} {En : Env} {QT : Option (PanSemResultExact 64) → State σ → Prop}

/-- `var rn = f(args); k` for a table call with parameters all `any` and no capabilities. -/
theorem hdecAnyT {f : MlS} {sg : Sig} {args : List (ExpHOL 64)} {rn : MlS} {sh : ShapeHOL} {k : ProgHOL 64}
    (hQT : ResIns rn QT) (hf : CSumm σ guestCtx guestC (HR σ) f sg []) (hps : ∀ pt ∈ sg.params, pt = .any)
    (hgw : sg.gw = []) (hfin : ptAllNames.contains f = true) (hlen : sg.params.length = args.length)
    (hrn : En rn = none) (hk : Hoare σ guestCtx (PAg (TL A ref Z O) En) k QT) :
    Hoare σ guestCtx (PAg (TL A ref Z O) En) (.decCall rn sh f args k) QT :=
  hdecCallT hQT hf csOK_nil (by rw [hgw]; simp) (by rw [JrOut, hgw]; intro g _ h; simp at h) hfin
    (fun s _ vs hvs _ _ _ => argsOK_anys hps (by rw [hlen, evs_length hvs]))
    (fun s _ vs _ => argCells_any vs hps)
    (fun v _ => hoare_pre hk fun t _ ht => pag_mono ht (env_mono_set hrn v) (fun s h => h))

/-- `if c { x = e }` for an untracked `x`. -/
theorem hn_iteAssign (hB : BLoc (TL A ref Z O)) {c : ExpHOL 64} {x : MlS} {e : ExpHOL 64} (hx : En x = none) :
    HN (PAg (TL A ref Z O) En) (.ite c (.assign .local x e) .skip) (PAg (TL A ref Z O) En) :=
  hn_ite (hn_pre (hassignF_g hB hx) (fun s _ h => h.1)) (hn_pre hn_skip (fun s _ h => h.1))

end comb

section p1
variable {K : TlCtx σ} {QT : Option (PanSemResultExact 64) → State σ → Prop}

theorem enT0_sender (K : TlCtx σ) : EnT0 K (nm "sender") = some (.val (.word K.sender)) := by
  have : nm "sender" ≠ nm "index" := by decide
  simp [EnT0, this]

/-- **`create_ether(sender, ..)`'s arguments fit.** -/
theorem cether_args_sender (hP : TlPre K) {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj} {x y : ValueHOL 64}
    {s : State σ} (hpa : PAg (TL K.A ref Z O) (EnT0 K) s) {Γ : Gam} {p : Ptrs} (hr : TlS K.A ref Z O s Γ p)
    (hx : ev s (lv (nm "sender")) = some x) :
    ArgsOK guestC Γ p [PT.buf 20, PT.any] [x, y] := by
  have hx' : x = .val (.word K.sender) := evI_lv (hpa.2 _ _ (enT0_sender K)) x hx
  subst hx'
  exact WaveHelpers.argsOK_2 ⟨K.sender, rfl, tl_bufOK hr hP.snd⟩ trivial

/-- `create_ether`'s buffer misses the frozen cells. -/
theorem cether_argsY {Y : BitVec 64 → Prop} {w : BitVec 64} {y : ValueHOL 64}
    (hy : ∀ a, Overlap w.toNat 20 a → ¬ Y a) :
    ∀ a, ArgCells [PT.buf 20, PT.any] [.val (.word w), y] a → ¬ Y a := by
  rintro a ⟨i, w', hw, ⟨n, hn, hov⟩ | ⟨j, c, d, x', hn, -, -⟩⟩
  · rcases i with _ | _ | i
    · simp only [List.getElem?_cons_zero, Option.some.injEq, PT.buf.injEq] at hn
      subst hn
      simp only [argW, List.getElem?_cons_zero, wordOf, Option.some.injEq] at hw
      subst hw
      exact hy a hov
    · simp at hn
    · simp at hn
  · rcases j with _ | _ | j <;> rcases i with _ | _ | i <;> simp at hn

end p1

end InitECandidate.Solver.MemSafe.Ptx
