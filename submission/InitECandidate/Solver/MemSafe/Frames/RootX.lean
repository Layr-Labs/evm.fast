import InitECandidate.Solver.MemSafe.Frames.SCGuestX

/-!
# The root frame's chain extension (frames9, task 3)

`process_message(msg)` opens the root frame with `frame_open(msg, 0)` (kind 0: the chain is the
single frame `(e, q)`), then (`depth0_prepare`, `state_snapshot`, `CK_SNAPSHOT` store)
`frame_start()` and `run_frames()`, whose precondition is `PreInvX … GP GR M`. `GR` is vacuous for a
one-frame chain; `GP` of the root frame needs, of `process_message`'s argument, exactly:

* **`RootMsgX Γ s msg`** (the caller's obligation, at `process_message`'s entry): `msg` is a `Γ`
  message object (`tMSGh` / `tMSGs`, at least 176 bytes) and its CALLER (16) / CURRENT_TARGET (32)
  words name `BufOK 20` blocks (heap blocks outside `Γ`, or scalar cells of `Γ` objects).

The log list (`EV 88`) and deletion table (`EV 136`) come from `frame_open`'s `NewX`.

* **`gp_root`**: after any run keeping the non-state `prot` cells (`frame_open`'s `RunT` /
  `ProtKeep (nst guestSt Γ)`), `RootMsgX` and `NewX msg` give the root frame's `GP`;
* **`chainE_root`**: the one-frame chain's extension `ChainE GP GR Γ' u [(e, q)]`.
-/

set_option autoImplicit false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

/-- **`process_message`'s obligation on its message** (for the root frame's `GP`). -/
def RootMsgX (Γ : Gam) (s : State σ) (msg : BitVec 64) : Prop :=
  (∃ M, MsgObj Γ msg M) ∧
    ∀ p, ptrsOf s = some p → ∀ k ∈ msgXOffs, BufOK guestC Γ p (fld s.memory msg k).toNat 20

/-- **The root frame's `GP`** after a run keeping the non-state `prot` cells, from `RootMsgX` at the
run's start and the new record's `NewX`. -/
theorem gp_root {H : Hooks σ} {gw : List MlS} {Γ Γ2 : Gam} {s u : State σ} {p p2 : Ptrs}
    {msg e q : BitVec 64} (hG : G guestC H Γ s) (hrun : RunT guestC H gw Γ s Γ2 u p p2)
    (hk : ProtKeep guestC (nst guestSt Γ) s u) (hx : RootMsgX Γ s msg)
    (hnx : NewX msg p u.memory Γ2 e) : GP Γ2 u.memory p2 (e, q) := by
  obtain ⟨⟨M, hM⟩, hB⟩ := hx
  obtain ⟨x112, ⟨L, hL2, hLb, hLt, hLe⟩, ⟨D, hD2, hDb, hDt⟩, -, hMk⟩ := hnx
  have hext := hrun.2.2.2.1
  have hmk := msgKeep_of_protKeepS hk
  have hmsg : msgOf u.memory (e, q) = msg := x112
  obtain ⟨M', hM', -⟩ := msgObj_ext hext hM
  refine ⟨⟨M', by rw [hmsg]; exact hM'⟩, fun k hk' => ?_,
    ⟨L, hL2, hLb, by rw [hLt]; decide, by rw [hLt]; rfl⟩, ⟨D, hD2, hDb, hDt⟩, hMk,
    logsG_of_lgEmp hLb hLe⟩
  rw [hmsg]
  obtain ⟨hMΓ, hMb, hMt, hMs⟩ := hM
  have hmt : M.ty ∈ msgTys := by rcases hMt with h' | h' <;> rw [h'] <;> decide
  have hpa := msg_addrProt hMt
  have hkeep : fld u.memory msg k = fld s.memory msg k := by
    simp only [msgXOffs, List.mem_cons, List.mem_nil_iff, or_false] at hk'
    rcases hk' with rfl | rfl
    · have := hmk M hMΓ hmt 2 (by unfold Obj.HasSlot; omega) hpa.1
      unfold fld; rw [← hMb]; exact this
    · have := hmk M hMΓ hmt 4 (by unfold Obj.HasSlot; omega) hpa.2
      unfold fld; rw [← hMb]; exact this
  rw [hkeep]
  exact bufOK_runT hG hrun (hB p hrun.1 k hk')

/-- **The root frame's chain extension** (one frame: `GP`; no child / parent pair). -/
theorem chainE_root {H : Hooks σ} {gw : List MlS} {Γ Γ2 : Gam} {s u : State σ} {p p2 : Ptrs}
    {msg e q : BitVec 64} (hG : G guestC H Γ s) (hrun : RunT guestC H gw Γ s Γ2 u p p2)
    (hk : ProtKeep guestC (nst guestSt Γ) s u) (hx : RootMsgX Γ s msg)
    (hnx : NewX msg p u.memory Γ2 e) : ChainE GP GR Γ2 u [(e, q)] := by
  refine ⟨fun p' hp' f hf => ?_, fun ch pa ha => ?_⟩
  · obtain rfl := ptrs_some hrun.2.1 hp'
    simp only [List.mem_singleton] at hf
    subst hf
    exact gp_root hG hrun hk hx hnx
  · obtain ⟨l1, l2, h⟩ := ha
    have := congrArg List.length h
    simp only [List.length_cons, List.length_nil, List.length_append] at this
    omega

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.gp_root
#print axioms InitECandidate.Solver.MemSafe.Frames.chainE_root
