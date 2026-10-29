import InitE.SourceSemantics

namespace InitE
open Classical
open Flapjack Flapjack.Basis.Pure.MlString

/-- Replay a deterministic oracle's complete recorded call arguments. Only
successful calls append events; terminal calls leave the host state intact. -/
def replayOracle {σ : Type} (oracle : HolOracle σ) (initial : σ)
    (events : List HolIoEvent) : σ :=
  events.foldl (fun host event =>
    match oracle event.name host event.configuration (event.bytes.map Prod.fst) with
    | .ret next _ => next
    | .final _ => host) initial

def observedHost (input : Guest.InputBlob) (events : List HolIoEvent) : Guest.HostMemory :=
  replayOracle sourceOracle (Guest.guestHostMemory input) events

/-- All 64 KiB of public output, observed through the common shared-memory oracle. -/
def outputByte (input : Guest.InputBlob) (events : List HolIoEvent)
    (offset : Fin 65536) : UInt8 :=
  ((observedHost input events) (BitVec.ofNat 64 outputStart + BitVec.ofNat 64 offset.val)).getD 0

/-- Host halt is normal termination even though its FFI outcome is `failed`:
that tag is the runtime stop signal, not Ethereum rejection. -/
def normalHalt : HolOutcome → Prop
  | .success => True
  | .resourceLimitHit => False
  | .ffiOutcome event => event.name = .extCall (ofString "halt") ∧ event.outcome = .failed

/-- Memory-exhaustion diagnostics are excluded from the covered source cases. -/
def coveredOutcome : HolOutcome → Prop
  | .success => True
  | .resourceLimitHit => False
  | .ffiOutcome event => event.outcome = .failed ∧
      (event.name ≠ .extCall (ofString "trap") ∨
        (event.configuration.length ≠ 1 ∧ event.configuration.length ≠ 6 ∧
          event.configuration.length ≠ 7))

def acceptedOutput (input : Guest.InputBlob) (outcome : HolOutcome)
    (events : List HolIoEvent) : Prop :=
  normalHalt outcome ∧ outputByte input events ⟨32,by decide⟩ = 1

/-- Successful validation preserves every output byte. Rejects and non-OOM
traps form one class, as specified by the challenge. -/
noncomputable def matchingResult (input : Guest.InputBlob) (sourceOutcome : HolOutcome)
    (sourceEvents : List HolIoEvent) (targetOutcome : HolOutcome)
    (targetEvents : List HolIoEvent) : Prop :=
  if acceptedOutput input sourceOutcome sourceEvents then
    acceptedOutput input targetOutcome targetEvents ∧
      ∀ offset, outputByte input sourceEvents offset = outputByte input targetEvents offset
  else coveredOutcome targetOutcome ∧ ¬ acceptedOutput input targetOutcome targetEvents

theorem matchingResult_refl (input : Guest.InputBlob) (outcome : HolOutcome)
    (events : List HolIoEvent) (covered : coveredOutcome outcome) :
    matchingResult input outcome events outcome events := by
  classical
  unfold matchingResult
  by_cases accepted : acceptedOutput input outcome events
  · rw [if_pos accepted]
    exact ⟨accepted,fun _ => rfl⟩
  · rw [if_neg accepted]
    exact ⟨covered,accepted⟩

end InitE
