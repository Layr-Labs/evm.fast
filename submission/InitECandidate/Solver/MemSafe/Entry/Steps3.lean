import InitECandidate.Solver.MemSafe.Entry.Steps2

/-!
# Entry: `frame_open(msg, 0)` takes the entry state to `PI M`
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Entry
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

/-- **What `process_message` needs of its message and the state at entry** (besides `G`):
`RootMsgX` (the message object and its `buf 20` address fields), `NewPreG` (the message is a
`Γ` message object, `MSG_CODE_N + 63 < 2^64`), the `ev` / `cur_cont` globals are words,
`JrNZ`, and `msg_gas + 2 ≤ M`. -/
def FoPre (M : Nat) (msg : BitVec 64) (Γ : Gam) (s : State σ) : Prop :=
  RootMsgX Γ s msg ∧ NewPreG [.val (.word msg)] s Γ ∧
  (∃ e0, gword s nmEv = some e0 ∧ e0.toNat < nullMax) ∧
  (∃ c0, gword s nmCC = some c0 ∧ c0.toNat < nullMax) ∧ JrNZ s ∧ (fld s.memory msg 40).toNat + 2 ≤ M

/-- The state before `frame_open`: `G`, the allocator, `FoPre`, the `msg` local. -/
def P0 (M : Nat) (msg : BitVec 64) (s : State σ) : Prop :=
  ∃ Γ p, G guestC (Hooks.guestHooksR (σ := σ)) Γ s ∧ ptrsOf s = some p ∧ FoPre M msg Γ s ∧
    s.locals.lookup (nm "msg") = some (.val (.word msg))

theorem p0_set {M : Nat} {msg : BitVec 64} {s : State σ} (h : P0 M msg s) {n : MlS}
    (hn : n ≠ nm "msg") (v : ValueHOL 64) : P0 M msg (setVarHOLFinite n v s) := by
  obtain ⟨Γ, p, hG, hp, hf, hl⟩ := h
  refine ⟨Γ, p, (G_locFree Hooks.guestHooksR_lawful s _ s.clock).mpr hG,
    (ptrsOf_congr rfl).trans hp, hf, ?_⟩
  rw [lk_set_ne s v hn]; exact hl

/-- The value relation of `frame_open` (`open_sumSpec_guestR`). -/
def FoR (vs : List (ValueHOL 64)) (s : State σ) (r : PanSemResultExact 64) (t : State σ) : Prop :=
  SumRelX guestC (Hooks.guestHooksR (σ := σ)) (sgFO []) (PreFO NewPreG)
    (fun vs s Γ a => ProtCell guestC Γ a ∧ False) (FOQ tEV tCK) vs s r t

theorem fo_spec : FunSpec σ guestCtx (nm "frame_open") FoR :=
  sumSpecA_relX Wire.open_sumSpec_guestR

theorem pi_fo {M : Nat} {msg : BitVec 64} {s st : State σ} {callee : Locs} {v : ValueHOL 64}
    (hP : P0 M msg s)
    (h : FoR [.val (.word msg), .val (.word (BitVec.ofNat 64 0))]
      (callEntryStateHOLFinite s callee) (.returned v) st) : PI M st := by
  have hH := Hooks.guestHooksR_lawful (σ := σ)
  obtain ⟨Γ, p, hG, hp, ⟨hx, hnp, ⟨e0, he0, hE0s⟩, ⟨c0, hc0, hC0s⟩, hJ, hM⟩, hl⟩ := hP
  have hGe : G guestC (Hooks.guestHooksR (σ := σ)) Γ (callEntryStateHOLFinite s callee) :=
    (G_locFree hH s _ _).mpr hG
  have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some p := (ptrsOf_congr rfl).trans hp
  obtain ⟨Γ', p0, p', hc, hq⟩ := h (by simp [Good]) (by simp [Abortive]) Γ hGe
    ⟨p, hpe, argsOK_any (by simp [sgFO]) rfl⟩
    ⟨msg, BitVec.ofNat 64 0, rfl, hnp, ⟨e0, he0⟩, ⟨c0, hc0⟩⟩
  obtain ⟨msg', kind, child, rec, hvs, hv, hev, hcc, hrec, -, hcf, hp0, hp8, hkind, -⟩ := hq v rfl
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
  obtain ⟨rfl, rfl⟩ := hvs
  have hargsOK : ArgsOK guestC Γ p0 (sgFO ([] : List MlS)).params
      [.val (.word msg), .val (.word (BitVec.ofNat 64 0))] :=
    argsOK_any (by simp [sgFO]) rfl
  have hrun := runT_of_sumCore (gw := (sgFO ([] : List MlS)).gw) (fun g h => h) hc
    (bkeep_of_sumCore (s := callEntryStateHOLFinite s callee) hGe hargsOK hc (fun a h => by exact absurd h.2 id))
  have hac : ∀ a, ArgCells (sgFO ([] : List MlS)).params
      [.val (.word msg), .val (.word (BitVec.ofNat 64 0))] a → ¬ ProtCell guestC Γ a :=
    fun a ha => absurd ha (argCells_any (by simp [sgFO]))
  have hk : ProtKeep guestC (nst guestSt Γ) (callEntryStateHOLFinite s callee) st :=
    protKeep_nst_of fun a hpc => sumCore_prot hc hGe hac a hpc (fun h => h)
  have hJ' : JrNZ st := jrNZ_runT (by decide) (by decide) hrun hJ
  have hpre := preInvX_open (msg := msg) hGe hrun hk hx hev hcc hrec
    ⟨by rw [show (ckKind : Nat) = 16 from rfl, hkind]; rfl,
      by rw [show (ckParent : Nat) = 0 from rfl, hp0 _ he0]; exact hE0s,
      by rw [show (ckParentCont : Nat) = 8 from rfl, hp8 _ hc0]; exact hC0s⟩ hcf hJ' hM
  exact ⟨Γ', p', hrun.2.2.2.2.2.1, hrun.2.1, hpre⟩

end InitECandidate.Solver.MemSafe.Entry

#print axioms InitECandidate.Solver.MemSafe.Entry.pi_fo
