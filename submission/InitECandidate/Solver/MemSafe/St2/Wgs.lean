import InitECandidate.Solver.MemSafe.St2.Basic
import InitECandidate.Solver.MemSafe.Rec.TxKit2
import InitECandidate.Solver.Band3.All

set_option autoImplicit false

/-!
# `ws_get_storage`'s summary (sonnet-st2, deliverable 2)

The body is `var root = ws_storage_root_of(addr); REST`. `REST` (the `memeq` test, the call
`ws_storage_trie(root)` and the lookup tail) is a *virtual function* of three parameters
`(addr, key, root : buf 32)`: the checker accepts it against `tab26` plus the single entry
`ws_storage_trie` at `[buf 32]` (`vchk_ok`). The first call is run by hand:
`ws_storage_root_of`'s `tab26` summary together with its located post (`RootLoc`) gives the
`BufS` of the root (`bufS_of_locW`), hence the virtual activation's `ArgsOK`; the virtual run's
`SumCore` is then pushed back to the real activation (`heap_after_call`; the root cells are in the
real foot, since they are `scalar` cells of old objects).
-/

set_option maxRecDepth 1000000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.St2
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
  InitECandidate.Solver.MemSafe.Stor InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Types (guestC tWSR)

variable {σ : Type}

/-! ## The virtual function -/

def wgsRest : ProgHOL 64 := match Band3.wgsBody with
  | .decCall _ _ _ _ k => k
  | p => p

theorem wgsBody_eq : Band3.wgsBody =
    .decCall (nm "root") .one (nm "ws_storage_root_of") [lv (nm "addr")] wgsRest := rfl

def vSig : Sig := ⟨[.any, .any, .buf 32], [], [], true⟩
def vPs : List (MlS × ShapeHOL) := [(nm "addr", .one), (nm "key", .one), (nm "root", .one)]
def vTab : CTab := (nm "ws_storage_trie", storWstBufSig, storWstCaps) :: ShardsJL.tab26
def vCE : CEnv := ⟨upg Types.guestC storWstCaps, vTab, vSig, storWstCaps⟩

def okO : Option AOut → Bool
  | some o => o.nrm.isNone && o.brk.isNone && o.cnt.isNone
  | none => false

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
/-- The checker accepts the rest of the body as a function of `(addr, key, root : buf 32)`,
against `tab26` and `ws_storage_trie` at `[buf 32]`; it never completes normally. -/
theorem vchk_ok : okO (chk vCE (initEnv vPs vSig.params 0 ⟨[], []⟩) wgsRest) = true := by
  conv => lhs; arg 1; arg 3; cbv
  conv => lhs; arg 1; arg 2; cbv
  conv => lhs; arg 1; arg 1; cbv
  decide +kernel

theorem vchk : ∃ o, chk vCE (initEnv vPs vSig.params 0 ⟨[], []⟩) wgsRest = some o ∧
    o.nrm = none ∧ o.brk = none ∧ o.cnt = none := by
  have h := vchk_ok
  cases hc : chk vCE (initEnv vPs vSig.params 0 ⟨[], []⟩) wgsRest with
  | none => rw [hc] at h; simp [okO] at h
  | some o => rw [hc] at h; simp [okO] at h; exact ⟨o, rfl, h.1.1, h.1.2, h.2⟩

theorem vCaps : capsOK Types.guestC vSig storWstCaps = true := by
  unfold capsOK; decide +kernel

theorem wgsCaps : capsOK Types.guestC storWgsSig storWstCaps = true := by
  unfold capsOK; decide +kernel


/-- The table of the virtual function is sound. -/
theorem vTab_sound
    (hWB : CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "ws_storage_trie")
      storWstBufSig storWstCaps) :
    CTabSound σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) vTab :=
  ctabSound_cons Rec.tab26_guestR hWB

/-- A `BufS` buffer is a write footprint of the activation: its cells are `WCell`s of the
entry typing or fresh. -/
theorem foot_of_bufS {X : Ctx 64} {a : Act σ} (ha : ActOK a X) {Γ : Gam} {p : Ptrs}
    {s : State σ} (hh : Heap a Γ p s) (hcb : a.Cb = guestC) {b n : Nat}
    (hb : BufS guestC Γ b n) {x : BitVec 64} (hx : Overlap b n x) : a.Foot x := by
  obtain ⟨o, ho, k, hk, hs, rfl⟩ := hb x hx
  refine foot_of_wcell hh ha.hord0 ha.hsz0 ⟨o, ho, k, hk, ?_, rfl⟩
  have : a.C.ty = guestC.ty := by rw [ha.hupg, hcb]; rfl
  rw [this, hs]
  decide

end InitECandidate.Solver.MemSafe.St2
