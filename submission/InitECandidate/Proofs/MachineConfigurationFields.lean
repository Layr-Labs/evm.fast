import InitE.MachineInitialization

namespace InitE
open Flapjack Flapjack.Compiler.Backend.LabToTarget

theorem challengeMachineConfig_entries (pc : BitVec 64)
    (program shared : BitVec 64 → Prop) (names : List HolFfiName)
    (first : Nat) (extra : List ShmemInfoNum) :
    (challengeMachineConfig pc program shared names first extra).ffiEntryPcs =
      ((List.range first).map fun i => pc - BitVec.ofNat 64 ((3+i)*ffiOffset)) ++
      (extra.map fun rec => pc + BitVec.ofNat 64 rec.entryPc) := rfl

end InitE
