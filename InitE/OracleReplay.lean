import InitE.Observations
import Flapjack.Compiler.Backend.Semantics.TargetSem.Evaluate

namespace InitE
open Classical Flapjack

/-- The physical host state agrees with replay of all recorded successful calls. -/
def OracleConsistent {σ : Type} (oracle : HolOracle σ) (initial : σ)
    (ffi : HolFfiState σ) : Prop :=
  ffi.oracle = oracle ∧ ffi.ffiState = replayOracle oracle initial ffi.ioEvents

theorem initial_oracle_consistent {σ : Type} (oracle : HolOracle σ) (initial : σ) :
    OracleConsistent oracle initial (initialHolFfiState oracle initial) := ⟨rfl, rfl⟩

theorem call_oracle_consistent {σ : Type} (oracle : HolOracle σ) (initial : σ)
    (ffi next : HolFfiState σ) (name : HolFfiName) (configuration bytes result : List (BitVec 8))
    (consistent : OracleConsistent oracle initial ffi)
    (call : callFFIHOL ffi name configuration bytes = .ret next result) :
    OracleConsistent oracle initial next := by
  unfold callFFIHOL at call
  split at call
  · cases call
    exact consistent
  · cases observed : ffi.oracle name ffi.ffiState configuration bytes with
    | final outcome => simp only [observed] at call; cases call
    | ret host returned =>
      simp only [observed] at call
      split at call
      next length =>
        cases call
        refine ⟨consistent.1, ?_⟩
        change host = replayOracle oracle initial
          (ffi.ioEvents ++ [{ name := name, configuration := configuration, bytes := bytes.zip result }])
        unfold replayOracle
        rw [List.foldl_append]
        simp only [List.foldl_cons, List.foldl_nil]
        rw [List.map_fst_zip (by omega)]
        change host = match oracle name (replayOracle oracle initial ffi.ioEvents) configuration bytes with
          | .ret next _ => next
          | .final _ => replayOracle oracle initial ffi.ioEvents
        rw [← consistent.2, ← consistent.1, observed]
      next _ => cases call

/-- The target evaluator preserves agreement between physical host state and
replayed recorded calls, through every ordinary, cache, MMIO and FFI branch. -/
theorem evaluate_oracle_consistent {width : Nat} [NeZero width]
    {State Projection σ : Type} (oracle : HolOracle σ) (initial : σ)
    (mc : MachineConfig width State Projection) (ffi : HolFfiState σ)
    (clock : Nat) (ms : State) (consistent : OracleConsistent oracle initial ffi) :
    OracleConsistent oracle initial (evaluateTargetHOL mc ffi clock ms).2.2 := by
  induction clock generalizing mc ffi ms with
  | zero => exact consistent
  | succ clock ih =>
    simp only [evaluateTargetHOL]
    repeat' first
      | exact consistent
      | (apply ih; exact consistent)
      | (apply ih; exact call_oracle_consistent oracle initial ffi _ _ _ _ _ consistent (by assumption))
      | split

/-- Observed output is the actual public host-memory state after execution,
not an additional output specification inferred from a call trace. -/
theorem target_host_replay {width : Nat} [NeZero width] {State Projection : Type}
    (input : Guest.InputBlob) (mc : MachineConfig width State Projection)
    (clock : Nat) (ms : State) :
    (evaluateTargetHOL mc (sourceFfi input) clock ms).2.2.ffiState =
      observedHost input (evaluateTargetHOL mc (sourceFfi input) clock ms).2.2.ioEvents :=
  (evaluate_oracle_consistent sourceOracle (Guest.guestHostMemory input)
    mc (sourceFfi input) clock ms (initial_oracle_consistent _ _)).2

theorem outputByte_final {width : Nat} [NeZero width] {State Projection : Type}
    (input : Guest.InputBlob) (mc : MachineConfig width State Projection)
    (clock : Nat) (ms finalMs : State) (result : MachineResult)
    (finalFfi : HolFfiState Guest.HostMemory)
    (run : evaluateTargetHOL mc (sourceFfi input) clock ms = (result, finalMs, finalFfi))
    (offset : Fin 65536) :
    outputByte input finalFfi.ioEvents offset =
      (finalFfi.ffiState (BitVec.ofNat 64 outputStart + BitVec.ofNat 64 offset.val)).getD 0 := by
  have host := target_host_replay input mc clock ms
  rw [run] at host
  exact congrArg (fun memory : Guest.HostMemory =>
    (memory (BitVec.ofNat 64 outputStart + BitVec.ofNat 64 offset.val)).getD 0) host.symm

end InitE
