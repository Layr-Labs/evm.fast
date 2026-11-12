import InitECandidate.Solver.MemSafe.D0.Sd11
import InitECandidate.Solver.MemSafe.D0.Pd7

/-!
# `set_delegation`: the body and its summary on the chain extension
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.D0
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

section
local notation "HJ" => (Hooks.guestHooksR (σ := σ))
local notation "gwJ" => [Hooks.gJn]
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
  {e c : BitVec 64} {rest : List Frame}

/-- **The body of `set_delegation`**: on every non-abortive result, `KP`. -/
theorem sd_body {tE : Nat} (hTE : TeHook σ tE) (hRA : RaH σ) (hSC : SetCodeH σ)
    (hfs : fs = (e, c) :: rest) (hs0 : KP HJ gwJ Γ0 s0 p0 fs e (fld s0.memory e 112) s0) :
    HoareG σ guestCtx (fun u => u = s0) sdBody
      (fun ro t => ∀ r, ro = some r → ¬ Abortive r →
        KP HJ gwJ Γ0 s0 p0 fs e (fld s0.memory e 112) t) := by
  have hH := (Hooks.frameCfg_guestHooksR (σ := σ)).hooks
  set mg := fld s0.memory e 112 with hmg
  have he0 : gword s0 nmEv = some e := by
    obtain ⟨-, Γ1, p1, -, hch, -⟩ := hs0
    exact ev_head (hfs ▸ hch)
  rw [sdBody_eq]
  unfold sdBodyX
  refine hoareG_dec fun s _ hs vm hvm _ => ?_
  rw [hs] at *; clear hs
  obtain ⟨rfl, -⟩ := ev_gLoad_eq he0 hvm
  refine hoareG_conseq (Q := fun ro t => ∀ r, ro = some r → ¬ Abortive r →
      KP HJ gwJ Γ0 s0 p0 fs e mg t) ?_ (fun _ _ h => h)
    (fun _ _ _ _ h r hr hna => kp_locals hH (h r hr hna) _)
  have hu1 := kp_locals hH hs0 (setVarHOLFinite (nm "msg") (.val (.word mg)) s0).locals
  have hl1 : LA (setVarHOLFinite (nm "msg") (.val (.word mg)) s0).locals
      [(nm "msg", .val (.word mg))] := fun x v hx => by
    simp only [List.lookup] at hx
    by_cases hxn : x == nm "msg"
    · simp only [hxn] at hx
      have : x = nm "msg" := by simpa using hxn
      subst this; rw [← Option.some.inj hx]; exact lk_set_self _ _ _
    · simp [hxn] at hx
  have main := sd_s00 hTE hRA hSC hfs hu1 hl1
  refine hoareG_conseq main (fun _ _ h => h) (fun ro t _ _ h r hr hna => ?_)
  rcases h with ⟨h0, -⟩ | ⟨h0, hk⟩
  · rw [h0] at hr; cases hr
  · exact hk r hr hna

end

/-- `set_delegation`'s precondition, for a fixed chain `fs`. -/
def SdPre (fs : List Frame) (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  vs = [] ∧ ChainL guestC tEV tCK Γ s fs ∧ ChainE GP GR Γ s fs ∧ JrNZ s

/-- `set_delegation`'s post (same chain, `Φ` not raised, `JrNZ`, `EV_MSG` kept), on every
non-abortive result. -/
def SdCore (fs : List Frame) (s : State σ) (Γ' : Gam) (t : State σ) : Prop :=
  ChainL guestC tEV tCK Γ' t fs ∧ ChainE GP GR Γ' t fs ∧ Phi t ≤ Phi s ∧ JrNZ t ∧
    ∀ e c rest, fs = (e, c) :: rest → fld t.memory e 112 = fld s.memory e 112

def SdQ (fs : List Frame) (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam)
    (r : PanSemResultExact 64) (t : State σ) (Γ' : Gam) : Prop :=
  ¬ Abortive r → SdCore fs s Γ' t

/-- **`set_delegation`'s summary on the chain extension.** -/
theorem sd_sumSpec {tE : Nat} (hTE : TeHook σ tE) (hRA : RaH σ) (hSC : SetCodeH σ)
    (fs : List Frame) :
    SumSpecT σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "set_delegation")
      (sg0 [Hooks.gJn]) (SdPre fs) (SdQ fs) := by
  intro vs body callee rs hl s0 hs0 hloc r hr hg hna Γ hG _ ⟨hvs, hch0, hE0, hJ0⟩
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, -⟩ := lookupCode_zero code_sd hl
  have ⟨p, hps, _⟩ := hG
  obtain ⟨e, c, rest, hfs, -, -, -⟩ := hch0.chain
  have hk0 : KP (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ s0 p fs e (fld s0.memory e 112) s0 :=
    ⟨hJ0, Γ, p, runT_refl hG hps, hch0, hE0, le_refl _, rfl⟩
  have H0 := sd_body hTE hRA hSC hfs hk0 s0 hs0 rfl (by rw [hr]; exact hg)
  rw [hr] at H0
  have hkp := H0 r rfl hna
  obtain ⟨hJ, Γ', p', hrun, hch, hE, hΦ, h112⟩ := hkp
  have hcore : SdCore fs s0 Γ' _ :=
    ⟨hch, hE, hΦ, hJ, fun e' c' rest' hf => by
      rw [hfs] at hf; simp only [List.cons.injEq, Prod.mk.injEq] at hf
      obtain ⟨⟨rfl, -⟩, -⟩ := hf; exact h112⟩
  exact ⟨Γ', p, p', sumCoreT_of_runT (sg := sg0 [Hooks.gJn]) rfl rfl hrun,
    fun _ => hcore⟩

end InitECandidate.Solver.MemSafe.D0

#print axioms InitECandidate.Solver.MemSafe.D0.sd_body
#print axioms InitECandidate.Solver.MemSafe.D0.sd_sumSpec
