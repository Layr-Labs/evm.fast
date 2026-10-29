import InitE.Parameters
import Guest.Model
import Flapjack.FfiBridge
import Flapjack.Misc.Alignment
import Flapjack.Pancake.Semantics.PanSem.Semantics
import Flapjack.Compiler.Backend.StackRemove

/-! The challenge fixes `Guest.Software.guestAst` and uses the exact evaluator in
the general compiler theorem reused by
`InitE.panToTargetCompileSemanticsOraclesRiscVSource`.
`Guest.Model` supplies byte-level host specifications, not its
stepped program evaluator. -/
namespace InitE
open Flapjack Flapjack.Compiler.Backend
open Flapjack.Basis.Pure.MlString

/-- The common byte oracle, with terminal runtime calls. Their final event
retains the name and configuration, so traps can be classified separately. -/
def sourceOracle : HolOracle Guest.HostMemory := fun name host configuration bytes =>
  match name with
  | .extCall name =>
      if name = ofString "halt" ∨ name = ofString "trap" then .final .failed
      else
        match Guest.guestOracle (.extCall (toStringOfBytes name)) host
            (configuration.map bitsToByte) (bytes.map bitsToByte) with
        | .returned next result => .ret next (result.map byteToBits)
        | .final .failed => .final .failed
        | .final .diverged => .final .diverged
  | .sharedMem op =>
      let op := match op with
        | .mappedRead => FfiShmemOp.mappedRead
        | .mappedWrite => FfiShmemOp.mappedWrite
      match Guest.guestOracle (.sharedMem op) host
          (configuration.map bitsToByte) (bytes.map bitsToByte) with
      | .returned next result => .ret next (result.map byteToBits)
      | .final .failed => .final .failed
      | .final .diverged => .final .diverged

def sourceFfi (input : Guest.InputBlob) : HolFfiState Guest.HostMemory :=
  initialHolFfiState sourceOracle (Guest.guestHostMemory input)

/-- Compiler-managed word cells, excluding the globals tail. -/
def ordinaryDomain : BitVec 64 → Prop :=
  StackRemove.addresses (BitVec.ofNat 64 sourceBase)
    ((stackStart - sourceBase) / 8 - globalsWords)

def sharedDomain (address : BitVec 64) : Prop :=
  holByteAligned address = true ∧
    ((inputStart ≤ address.toNat ∧ address.toNat < inputEnd) ∨
      (outputStart ≤ address.toNat ∧ address.toNat < outputEnd))

/-- The startup page contains the runtime pointers installed by the bootstrap;
all remaining ordinary scratch and heap cells start at zero. -/
def sourceMemory (address : BitVec 64) : HolWordLab 64 :=
  .word (if sourceBase ≤ address.toNat ∧ address.toNat < sourceBase + 40 then
    Guest.startupHeaders[(address.toNat - sourceBase) / 8]?.getD 0
  else 0)

def sourceInitialState (input : Guest.InputBlob) : PanSemStateFiniteExact 64 Guest.HostMemory :=
  { locals := HolFiniteMapExact.empty
    globals := HolFiniteMapExact.empty
    structs := []
    code := HolFiniteMapExact.empty
    eshapes := HolFiniteMapExact.empty
    memory := sourceMemory
    memaddrs := ordinaryDomain
    shMemaddrs := sharedDomain
    clock := 0
    be := false
    ffi := sourceFfi input
    baseAddr := BitVec.ofNat 64 sourceBase
    topAddr := BitVec.ofNat 64 heapEnd }

/-- Authoritative source behavior, on the fixed literal AST. -/
noncomputable def sourceBehaviour (input : Guest.InputBlob) : HolBehaviour :=
  PanSemStateFiniteExact.semanticsDecls (sourceInitialState input) (ofString "main")
    (Guest.Software.guestAst.map Pancake.PanLang.declToHOL)

theorem source_empty_maps (input : Guest.InputBlob) :
    (sourceInitialState input).locals = HolFiniteMapExact.empty ∧
    (sourceInitialState input).globals = HolFiniteMapExact.empty ∧
    (sourceInitialState input).code = HolFiniteMapExact.empty ∧
    (sourceInitialState input).eshapes = HolFiniteMapExact.empty :=
  ⟨rfl, rfl, rfl, rfl⟩

theorem source_memory_domain (input : Guest.InputBlob) :
    (sourceInitialState input).memaddrs = ordinaryDomain := rfl

/-- Every aligned cell of the guest's scratch arena is ordinary source memory,
so `frame_new`'s scratch stores do not fail in the source semantics. -/
theorem scratch_in_ordinaryDomain (address : BitVec 64) (aligned : address.toNat % 8 = 0)
    (inside : scratchStart ≤ address.toNat ∧ address.toNat < scratchEnd) :
    ordinaryDomain address := by
  refine (StackRemove.mem_addresses _ _ _).mpr
    ⟨(address.toNat - sourceBase) / 8, ?_, ?_⟩
  · simp only [scratchStart, scratchEnd, sourceBase, stackStart, ramEnd, ramStart, ramSize,
      stackSize, globalsWords] at inside ⊢
    omega
  · apply BitVec.eq_of_toNat_eq
    change address.toNat = (BitVec.ofNat 64 sourceBase +
      BitVec.ofNat 64 ((address.toNat - sourceBase) / 8) * BitVec.ofNat 64 8).toNat
    rw [BitVec.ofNat_mul_ofNat, BitVec.ofNat_add_ofNat, BitVec.toNat_ofNat]
    simp only [scratchStart, scratchEnd, sourceBase] at inside ⊢
    omega

theorem halt_is_terminal (host : Guest.HostMemory) (config bytes : List (BitVec 8)) :
    sourceOracle (.extCall (ofString "halt")) host config bytes = .final .failed := by
  simp [sourceOracle]

theorem trap_is_terminal (host : Guest.HostMemory) (config bytes : List (BitVec 8)) :
    sourceOracle (.extCall (ofString "trap")) host config bytes = .final .failed := by
  simp [sourceOracle]

end InitE
