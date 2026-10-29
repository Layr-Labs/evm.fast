import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data94
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate76
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody94_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "h",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "e")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "e")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "e")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "e")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "e")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "e")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "g",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "e",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "f", Flapjack.Exp.var Flapjack.VarKind.local "g"]]],
      Flapjack.Exp.const 1116352408#64, Flapjack.Exp.var Flapjack.VarKind.local "w0"])

def globalBody94_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d"
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "d", Flapjack.Exp.var Flapjack.VarKind.local "t1"])
      (Flapjack.Exp.const 32#64))
    (Flapjack.Exp.const 32#64))

def globalBody94_2 : Prog (BitVec 64) :=
.seq globalBody94_0 globalBody94_1

def globalBody94_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "h"
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "t1",
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "a")
                    (Flapjack.Exp.const 2#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "a")
                    (Flapjack.Exp.const 30#64)],
              Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "a")
                    (Flapjack.Exp.const 13#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "a")
                    (Flapjack.Exp.const 19#64)],
              Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "a")
                    (Flapjack.Exp.const 22#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "a")
                    (Flapjack.Exp.const 10#64)]],
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.var Flapjack.VarKind.local "b",
              Flapjack.Exp.op Flapjack.BinOp.and
                [Flapjack.Exp.op Flapjack.BinOp.xor
                    [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "b"],
                  Flapjack.Exp.op Flapjack.BinOp.xor
                    [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.var Flapjack.VarKind.local "c"]]]])
      (Flapjack.Exp.const 32#64))
    (Flapjack.Exp.const 32#64))

def globalBody94_4 : Prog (BitVec 64) :=
.seq globalBody94_2 globalBody94_3

def globalBody94_5 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "g",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "f",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "d",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.var Flapjack.VarKind.local "f"]]],
      Flapjack.Exp.const 1899447441#64, Flapjack.Exp.var Flapjack.VarKind.local "w1"])

def globalBody94_6 : Prog (BitVec 64) :=
.seq globalBody94_4 globalBody94_5

def globalBody94_7 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "c"
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "c", Flapjack.Exp.var Flapjack.VarKind.local "t1"])
      (Flapjack.Exp.const 32#64))
    (Flapjack.Exp.const 32#64))

def globalBody94_8 : Prog (BitVec 64) :=
.seq globalBody94_6 globalBody94_7

def globalBody94_9 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "g"
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "t1",
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "h")
                    (Flapjack.Exp.const 2#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "h")
                    (Flapjack.Exp.const 30#64)],
              Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "h")
                    (Flapjack.Exp.const 13#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "h")
                    (Flapjack.Exp.const 19#64)],
              Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "h")
                    (Flapjack.Exp.const 22#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "h")
                    (Flapjack.Exp.const 10#64)]],
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.var Flapjack.VarKind.local "a",
              Flapjack.Exp.op Flapjack.BinOp.and
                [Flapjack.Exp.op Flapjack.BinOp.xor
                    [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.var Flapjack.VarKind.local "a"],
                  Flapjack.Exp.op Flapjack.BinOp.xor
                    [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "b"]]]])
      (Flapjack.Exp.const 32#64))
    (Flapjack.Exp.const 32#64))

def globalBody94_10 : Prog (BitVec 64) :=
.seq globalBody94_8 globalBody94_9

def globalBody94_11 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "f",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "c")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "c")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "c")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "c")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "c")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "c")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "e",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "c",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "d", Flapjack.Exp.var Flapjack.VarKind.local "e"]]],
      Flapjack.Exp.const 18446744072463907791#64, Flapjack.Exp.var Flapjack.VarKind.local "w2"])

def globalBody94_12 : Prog (BitVec 64) :=
.seq globalBody94_10 globalBody94_11

def globalBody94_13 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "b"
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.var Flapjack.VarKind.local "t1"])
      (Flapjack.Exp.const 32#64))
    (Flapjack.Exp.const 32#64))

def globalBody94_14 : Prog (BitVec 64) :=
.seq globalBody94_12 globalBody94_13

def globalBody94_15 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "f"
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "t1",
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "g")
                    (Flapjack.Exp.const 2#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "g")
                    (Flapjack.Exp.const 30#64)],
              Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "g")
                    (Flapjack.Exp.const 13#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "g")
                    (Flapjack.Exp.const 19#64)],
              Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "g")
                    (Flapjack.Exp.const 22#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "g")
                    (Flapjack.Exp.const 10#64)]],
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.var Flapjack.VarKind.local "h",
              Flapjack.Exp.op Flapjack.BinOp.and
                [Flapjack.Exp.op Flapjack.BinOp.xor
                    [Flapjack.Exp.var Flapjack.VarKind.local "g", Flapjack.Exp.var Flapjack.VarKind.local "h"],
                  Flapjack.Exp.op Flapjack.BinOp.xor
                    [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.var Flapjack.VarKind.local "a"]]]])
      (Flapjack.Exp.const 32#64))
    (Flapjack.Exp.const 32#64))

def globalBody94_16 : Prog (BitVec 64) :=
.seq globalBody94_14 globalBody94_15

def globalBody94_17 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "e",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "d",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "b",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "c", Flapjack.Exp.var Flapjack.VarKind.local "d"]]],
      Flapjack.Exp.const 18446744073335593893#64, Flapjack.Exp.var Flapjack.VarKind.local "w3"])

def globalBody94_18 : Prog (BitVec 64) :=
.seq globalBody94_16 globalBody94_17

def globalBody94_19 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a"
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "t1"])
      (Flapjack.Exp.const 32#64))
    (Flapjack.Exp.const 32#64))

def globalBody94_20 : Prog (BitVec 64) :=
.seq globalBody94_18 globalBody94_19

def globalBody94_21 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "e"
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "t1",
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "f")
                    (Flapjack.Exp.const 2#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "f")
                    (Flapjack.Exp.const 30#64)],
              Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "f")
                    (Flapjack.Exp.const 13#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "f")
                    (Flapjack.Exp.const 19#64)],
              Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "f")
                    (Flapjack.Exp.const 22#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "f")
                    (Flapjack.Exp.const 10#64)]],
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.var Flapjack.VarKind.local "g",
              Flapjack.Exp.op Flapjack.BinOp.and
                [Flapjack.Exp.op Flapjack.BinOp.xor
                    [Flapjack.Exp.var Flapjack.VarKind.local "f", Flapjack.Exp.var Flapjack.VarKind.local "g"],
                  Flapjack.Exp.op Flapjack.BinOp.xor
                    [Flapjack.Exp.var Flapjack.VarKind.local "g", Flapjack.Exp.var Flapjack.VarKind.local "h"]]]])
      (Flapjack.Exp.const 32#64))
    (Flapjack.Exp.const 32#64))

def globalBody94_22 : Prog (BitVec 64) :=
.seq globalBody94_20 globalBody94_21

def globalBody94_23 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "d",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "a")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "a")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "a")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "a")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "a")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "a")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "c",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "a",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.var Flapjack.VarKind.local "c"]]],
      Flapjack.Exp.const 961987163#64, Flapjack.Exp.var Flapjack.VarKind.local "w4"])

def globalBody94_24 : Prog (BitVec 64) :=
.seq globalBody94_22 globalBody94_23

def globalBody94_25 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "h"
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.var Flapjack.VarKind.local "t1"])
      (Flapjack.Exp.const 32#64))
    (Flapjack.Exp.const 32#64))

def globalBody94_26 : Prog (BitVec 64) :=
.seq globalBody94_24 globalBody94_25

def globalBody94_27 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d"
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "t1",
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "e")
                    (Flapjack.Exp.const 2#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "e")
                    (Flapjack.Exp.const 30#64)],
              Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "e")
                    (Flapjack.Exp.const 13#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "e")
                    (Flapjack.Exp.const 19#64)],
              Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "e")
                    (Flapjack.Exp.const 22#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "e")
                    (Flapjack.Exp.const 10#64)]],
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.var Flapjack.VarKind.local "f",
              Flapjack.Exp.op Flapjack.BinOp.and
                [Flapjack.Exp.op Flapjack.BinOp.xor
                    [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.var Flapjack.VarKind.local "f"],
                  Flapjack.Exp.op Flapjack.BinOp.xor
                    [Flapjack.Exp.var Flapjack.VarKind.local "f", Flapjack.Exp.var Flapjack.VarKind.local "g"]]]])
      (Flapjack.Exp.const 32#64))
    (Flapjack.Exp.const 32#64))

def globalBody94_28 : Prog (BitVec 64) :=
.seq globalBody94_26 globalBody94_27

def globalBody94_29 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "c",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "h")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "h")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "h")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "h")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "h")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "h")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "b",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "h",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "b"]]],
      Flapjack.Exp.const 1508970993#64, Flapjack.Exp.var Flapjack.VarKind.local "w5"])

def globalBody94_30 : Prog (BitVec 64) :=
.seq globalBody94_28 globalBody94_29

def globalBody94_31 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "g"
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "g", Flapjack.Exp.var Flapjack.VarKind.local "t1"])
      (Flapjack.Exp.const 32#64))
    (Flapjack.Exp.const 32#64))

def globalBody94_32 : Prog (BitVec 64) :=
.seq globalBody94_30 globalBody94_31

def globalBody94_33 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "c"
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "t1",
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "d")
                    (Flapjack.Exp.const 2#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "d")
                    (Flapjack.Exp.const 30#64)],
              Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "d")
                    (Flapjack.Exp.const 13#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "d")
                    (Flapjack.Exp.const 19#64)],
              Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "d")
                    (Flapjack.Exp.const 22#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "d")
                    (Flapjack.Exp.const 10#64)]],
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.var Flapjack.VarKind.local "e",
              Flapjack.Exp.op Flapjack.BinOp.and
                [Flapjack.Exp.op Flapjack.BinOp.xor
                    [Flapjack.Exp.var Flapjack.VarKind.local "d", Flapjack.Exp.var Flapjack.VarKind.local "e"],
                  Flapjack.Exp.op Flapjack.BinOp.xor
                    [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.var Flapjack.VarKind.local "f"]]]])
      (Flapjack.Exp.const 32#64))
    (Flapjack.Exp.const 32#64))

def globalBody94_34 : Prog (BitVec 64) :=
.seq globalBody94_32 globalBody94_33

def globalBody94_35 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "b",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "g")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "g")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "g")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "g")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "g")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "g")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "a",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "g",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.var Flapjack.VarKind.local "a"]]],
      Flapjack.Exp.const 18446744071868220068#64, Flapjack.Exp.var Flapjack.VarKind.local "w6"])

def globalBody94_36 : Prog (BitVec 64) :=
.seq globalBody94_34 globalBody94_35

def globalBody94_37 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "f"
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "f", Flapjack.Exp.var Flapjack.VarKind.local "t1"])
      (Flapjack.Exp.const 32#64))
    (Flapjack.Exp.const 32#64))

def globalBody94_38 : Prog (BitVec 64) :=
.seq globalBody94_36 globalBody94_37

def globalBody94_39 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "b"
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "t1",
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "c")
                    (Flapjack.Exp.const 2#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "c")
                    (Flapjack.Exp.const 30#64)],
              Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "c")
                    (Flapjack.Exp.const 13#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "c")
                    (Flapjack.Exp.const 19#64)],
              Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "c")
                    (Flapjack.Exp.const 22#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "c")
                    (Flapjack.Exp.const 10#64)]],
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.var Flapjack.VarKind.local "d",
              Flapjack.Exp.op Flapjack.BinOp.and
                [Flapjack.Exp.op Flapjack.BinOp.xor
                    [Flapjack.Exp.var Flapjack.VarKind.local "c", Flapjack.Exp.var Flapjack.VarKind.local "d"],
                  Flapjack.Exp.op Flapjack.BinOp.xor
                    [Flapjack.Exp.var Flapjack.VarKind.local "d", Flapjack.Exp.var Flapjack.VarKind.local "e"]]]])
      (Flapjack.Exp.const 32#64))
    (Flapjack.Exp.const 32#64))

def globalBody94_40 : Prog (BitVec 64) :=
.seq globalBody94_38 globalBody94_39

def globalBody94_41 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "a",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "f")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "f")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "f")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "f")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "f")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "f")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "h",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "f",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "g", Flapjack.Exp.var Flapjack.VarKind.local "h"]]],
      Flapjack.Exp.const 18446744072285347541#64, Flapjack.Exp.var Flapjack.VarKind.local "w7"])

def globalBody94_42 : Prog (BitVec 64) :=
.seq globalBody94_40 globalBody94_41

def globalBody94_43 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "e"
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.var Flapjack.VarKind.local "t1"])
      (Flapjack.Exp.const 32#64))
    (Flapjack.Exp.const 32#64))

def globalBody94_44 : Prog (BitVec 64) :=
.seq globalBody94_42 globalBody94_43

def globalBody94_45 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a"
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "t1",
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "b")
                    (Flapjack.Exp.const 2#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "b")
                    (Flapjack.Exp.const 30#64)],
              Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "b")
                    (Flapjack.Exp.const 13#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "b")
                    (Flapjack.Exp.const 19#64)],
              Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "b")
                    (Flapjack.Exp.const 22#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "b")
                    (Flapjack.Exp.const 10#64)]],
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.var Flapjack.VarKind.local "c",
              Flapjack.Exp.op Flapjack.BinOp.and
                [Flapjack.Exp.op Flapjack.BinOp.xor
                    [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.var Flapjack.VarKind.local "c"],
                  Flapjack.Exp.op Flapjack.BinOp.xor
                    [Flapjack.Exp.var Flapjack.VarKind.local "c", Flapjack.Exp.var Flapjack.VarKind.local "d"]]]])
      (Flapjack.Exp.const 32#64))
    (Flapjack.Exp.const 32#64))

def globalBody94_46 : Prog (BitVec 64) :=
.seq globalBody94_44 globalBody94_45

def globalBody94_47 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "h",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "e")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "e")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "e")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "e")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "e")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "e")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "g",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "e",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "f", Flapjack.Exp.var Flapjack.VarKind.local "g"]]],
      Flapjack.Exp.const 18446744073038965400#64, Flapjack.Exp.var Flapjack.VarKind.local "w8"])

def globalBody94_48 : Prog (BitVec 64) :=
.seq globalBody94_46 globalBody94_47

def globalBody94_49 : Prog (BitVec 64) :=
.seq globalBody94_48 globalBody94_1

def globalBody94_50 : Prog (BitVec 64) :=
.seq globalBody94_49 globalBody94_3

def globalBody94_51 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "g",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "f",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "d",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.var Flapjack.VarKind.local "f"]]],
      Flapjack.Exp.const 310598401#64, Flapjack.Exp.var Flapjack.VarKind.local "w9"])

def globalBody94_52 : Prog (BitVec 64) :=
.seq globalBody94_50 globalBody94_51

def globalBody94_53 : Prog (BitVec 64) :=
.seq globalBody94_52 globalBody94_7

def globalBody94_54 : Prog (BitVec 64) :=
.seq globalBody94_53 globalBody94_9

def globalBody94_55 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "f",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "c")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "c")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "c")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "c")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "c")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "c")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "e",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "c",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "d", Flapjack.Exp.var Flapjack.VarKind.local "e"]]],
      Flapjack.Exp.const 607225278#64, Flapjack.Exp.var Flapjack.VarKind.local "w10"])

def globalBody94_56 : Prog (BitVec 64) :=
.seq globalBody94_54 globalBody94_55

def globalBody94_57 : Prog (BitVec 64) :=
.seq globalBody94_56 globalBody94_13

def globalBody94_58 : Prog (BitVec 64) :=
.seq globalBody94_57 globalBody94_15

def globalBody94_59 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "e",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "d",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "b",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "c", Flapjack.Exp.var Flapjack.VarKind.local "d"]]],
      Flapjack.Exp.const 1426881987#64, Flapjack.Exp.var Flapjack.VarKind.local "w11"])

def globalBody94_60 : Prog (BitVec 64) :=
.seq globalBody94_58 globalBody94_59

def globalBody94_61 : Prog (BitVec 64) :=
.seq globalBody94_60 globalBody94_19

def globalBody94_62 : Prog (BitVec 64) :=
.seq globalBody94_61 globalBody94_21

def globalBody94_63 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "d",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "a")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "a")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "a")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "a")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "a")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "a")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "c",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "a",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.var Flapjack.VarKind.local "c"]]],
      Flapjack.Exp.const 1925078388#64, Flapjack.Exp.var Flapjack.VarKind.local "w12"])

def globalBody94_64 : Prog (BitVec 64) :=
.seq globalBody94_62 globalBody94_63

def globalBody94_65 : Prog (BitVec 64) :=
.seq globalBody94_64 globalBody94_25

def globalBody94_66 : Prog (BitVec 64) :=
.seq globalBody94_65 globalBody94_27

def globalBody94_67 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "c",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "h")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "h")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "h")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "h")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "h")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "h")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "b",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "h",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "b"]]],
      Flapjack.Exp.const 18446744071576662526#64, Flapjack.Exp.var Flapjack.VarKind.local "w13"])

def globalBody94_68 : Prog (BitVec 64) :=
.seq globalBody94_66 globalBody94_67

def globalBody94_69 : Prog (BitVec 64) :=
.seq globalBody94_68 globalBody94_31

def globalBody94_70 : Prog (BitVec 64) :=
.seq globalBody94_69 globalBody94_33

def globalBody94_71 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "b",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "g")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "g")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "g")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "g")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "g")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "g")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "a",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "g",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.var Flapjack.VarKind.local "a"]]],
      Flapjack.Exp.const 18446744072029472423#64, Flapjack.Exp.var Flapjack.VarKind.local "w14"])

def globalBody94_72 : Prog (BitVec 64) :=
.seq globalBody94_70 globalBody94_71

def globalBody94_73 : Prog (BitVec 64) :=
.seq globalBody94_72 globalBody94_37

def globalBody94_74 : Prog (BitVec 64) :=
.seq globalBody94_73 globalBody94_39

def globalBody94_75 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "a",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "f")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "f")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "f")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "f")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "f")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "f")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "h",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "f",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "g", Flapjack.Exp.var Flapjack.VarKind.local "h"]]],
      Flapjack.Exp.const 18446744072662806900#64, Flapjack.Exp.var Flapjack.VarKind.local "w15"])

def globalBody94_76 : Prog (BitVec 64) :=
.seq globalBody94_74 globalBody94_75

def globalBody94_77 : Prog (BitVec 64) :=
.seq globalBody94_76 globalBody94_43

def globalBody94_78 : Prog (BitVec 64) :=
.seq globalBody94_77 globalBody94_45

def globalBody94_79 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "w0"
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "w0",
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w1")
                    (Flapjack.Exp.const 7#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w1")
                    (Flapjack.Exp.const 25#64)],
              Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w1")
                    (Flapjack.Exp.const 18#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w1")
                    (Flapjack.Exp.const 14#64)],
              Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w1")
                (Flapjack.Exp.const 3#64)],
          Flapjack.Exp.var Flapjack.VarKind.local "w9",
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w14")
                    (Flapjack.Exp.const 17#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w14")
                    (Flapjack.Exp.const 15#64)],
              Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w14")
                    (Flapjack.Exp.const 19#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w14")
                    (Flapjack.Exp.const 13#64)],
              Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w14")
                (Flapjack.Exp.const 10#64)]])
      (Flapjack.Exp.const 32#64))
    (Flapjack.Exp.const 32#64))

def globalBody94_80 : Prog (BitVec 64) :=
.seq globalBody94_78 globalBody94_79

def globalBody94_81 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "h",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "e")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "e")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "e")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "e")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "e")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "e")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "g",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "e",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "f", Flapjack.Exp.var Flapjack.VarKind.local "g"]]],
      Flapjack.Exp.const 18446744073249974721#64, Flapjack.Exp.var Flapjack.VarKind.local "w0"])

def globalBody94_82 : Prog (BitVec 64) :=
.seq globalBody94_80 globalBody94_81

def globalBody94_83 : Prog (BitVec 64) :=
.seq globalBody94_82 globalBody94_1

def globalBody94_84 : Prog (BitVec 64) :=
.seq globalBody94_83 globalBody94_3

def globalBody94_85 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "w1"
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "w1",
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w2")
                    (Flapjack.Exp.const 7#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w2")
                    (Flapjack.Exp.const 25#64)],
              Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w2")
                    (Flapjack.Exp.const 18#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w2")
                    (Flapjack.Exp.const 14#64)],
              Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w2")
                (Flapjack.Exp.const 3#64)],
          Flapjack.Exp.var Flapjack.VarKind.local "w10",
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w15")
                    (Flapjack.Exp.const 17#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w15")
                    (Flapjack.Exp.const 15#64)],
              Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w15")
                    (Flapjack.Exp.const 19#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w15")
                    (Flapjack.Exp.const 13#64)],
              Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w15")
                (Flapjack.Exp.const 10#64)]])
      (Flapjack.Exp.const 32#64))
    (Flapjack.Exp.const 32#64))

def globalBody94_86 : Prog (BitVec 64) :=
.seq globalBody94_84 globalBody94_85

def globalBody94_87 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "g",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "f",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "d",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.var Flapjack.VarKind.local "f"]]],
      Flapjack.Exp.const 18446744073436809094#64, Flapjack.Exp.var Flapjack.VarKind.local "w1"])

def globalBody94_88 : Prog (BitVec 64) :=
.seq globalBody94_86 globalBody94_87

def globalBody94_89 : Prog (BitVec 64) :=
.seq globalBody94_88 globalBody94_7

def globalBody94_90 : Prog (BitVec 64) :=
.seq globalBody94_89 globalBody94_9

def globalBody94_91 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "w2"
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "w2",
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w3")
                    (Flapjack.Exp.const 7#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w3")
                    (Flapjack.Exp.const 25#64)],
              Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w3")
                    (Flapjack.Exp.const 18#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w3")
                    (Flapjack.Exp.const 14#64)],
              Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w3")
                (Flapjack.Exp.const 3#64)],
          Flapjack.Exp.var Flapjack.VarKind.local "w11",
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w0")
                    (Flapjack.Exp.const 17#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w0")
                    (Flapjack.Exp.const 15#64)],
              Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w0")
                    (Flapjack.Exp.const 19#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w0")
                    (Flapjack.Exp.const 13#64)],
              Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w0")
                (Flapjack.Exp.const 10#64)]])
      (Flapjack.Exp.const 32#64))
    (Flapjack.Exp.const 32#64))

def globalBody94_92 : Prog (BitVec 64) :=
.seq globalBody94_90 globalBody94_91

def globalBody94_93 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "f",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "c")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "c")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "c")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "c")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "c")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "c")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "e",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "c",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "d", Flapjack.Exp.var Flapjack.VarKind.local "e"]]],
      Flapjack.Exp.const 264347078#64, Flapjack.Exp.var Flapjack.VarKind.local "w2"])

def globalBody94_94 : Prog (BitVec 64) :=
.seq globalBody94_92 globalBody94_93

def globalBody94_95 : Prog (BitVec 64) :=
.seq globalBody94_94 globalBody94_13

def globalBody94_96 : Prog (BitVec 64) :=
.seq globalBody94_95 globalBody94_15

def globalBody94_97 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "w3"
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "w3",
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w4")
                    (Flapjack.Exp.const 7#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w4")
                    (Flapjack.Exp.const 25#64)],
              Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w4")
                    (Flapjack.Exp.const 18#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w4")
                    (Flapjack.Exp.const 14#64)],
              Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w4")
                (Flapjack.Exp.const 3#64)],
          Flapjack.Exp.var Flapjack.VarKind.local "w12",
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w1")
                    (Flapjack.Exp.const 17#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w1")
                    (Flapjack.Exp.const 15#64)],
              Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w1")
                    (Flapjack.Exp.const 19#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w1")
                    (Flapjack.Exp.const 13#64)],
              Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w1")
                (Flapjack.Exp.const 10#64)]])
      (Flapjack.Exp.const 32#64))
    (Flapjack.Exp.const 32#64))

def globalBody94_98 : Prog (BitVec 64) :=
.seq globalBody94_96 globalBody94_97

def globalBody94_99 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "e",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "d",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "b",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "c", Flapjack.Exp.var Flapjack.VarKind.local "d"]]],
      Flapjack.Exp.const 604807628#64, Flapjack.Exp.var Flapjack.VarKind.local "w3"])

def globalBody94_100 : Prog (BitVec 64) :=
.seq globalBody94_98 globalBody94_99

def globalBody94_101 : Prog (BitVec 64) :=
.seq globalBody94_100 globalBody94_19

def globalBody94_102 : Prog (BitVec 64) :=
.seq globalBody94_101 globalBody94_21

def globalBody94_103 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "w4"
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "w4",
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w5")
                    (Flapjack.Exp.const 7#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w5")
                    (Flapjack.Exp.const 25#64)],
              Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w5")
                    (Flapjack.Exp.const 18#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w5")
                    (Flapjack.Exp.const 14#64)],
              Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w5")
                (Flapjack.Exp.const 3#64)],
          Flapjack.Exp.var Flapjack.VarKind.local "w13",
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w2")
                    (Flapjack.Exp.const 17#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w2")
                    (Flapjack.Exp.const 15#64)],
              Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w2")
                    (Flapjack.Exp.const 19#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w2")
                    (Flapjack.Exp.const 13#64)],
              Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w2")
                (Flapjack.Exp.const 10#64)]])
      (Flapjack.Exp.const 32#64))
    (Flapjack.Exp.const 32#64))

def globalBody94_104 : Prog (BitVec 64) :=
.seq globalBody94_102 globalBody94_103

def globalBody94_105 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "d",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "a")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "a")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "a")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "a")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "a")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "a")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "c",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "a",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.var Flapjack.VarKind.local "c"]]],
      Flapjack.Exp.const 770255983#64, Flapjack.Exp.var Flapjack.VarKind.local "w4"])

def globalBody94_106 : Prog (BitVec 64) :=
.seq globalBody94_104 globalBody94_105

def globalBody94_107 : Prog (BitVec 64) :=
.seq globalBody94_106 globalBody94_25

def globalBody94_108 : Prog (BitVec 64) :=
.seq globalBody94_107 globalBody94_27

def globalBody94_109 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "w5"
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "w5",
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w6")
                    (Flapjack.Exp.const 7#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w6")
                    (Flapjack.Exp.const 25#64)],
              Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w6")
                    (Flapjack.Exp.const 18#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w6")
                    (Flapjack.Exp.const 14#64)],
              Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w6")
                (Flapjack.Exp.const 3#64)],
          Flapjack.Exp.var Flapjack.VarKind.local "w14",
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w3")
                    (Flapjack.Exp.const 17#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w3")
                    (Flapjack.Exp.const 15#64)],
              Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w3")
                    (Flapjack.Exp.const 19#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w3")
                    (Flapjack.Exp.const 13#64)],
              Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w3")
                (Flapjack.Exp.const 10#64)]])
      (Flapjack.Exp.const 32#64))
    (Flapjack.Exp.const 32#64))

def globalBody94_110 : Prog (BitVec 64) :=
.seq globalBody94_108 globalBody94_109

def globalBody94_111 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "c",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "h")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "h")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "h")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "h")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "h")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "h")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "b",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "h",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "b"]]],
      Flapjack.Exp.const 1249150122#64, Flapjack.Exp.var Flapjack.VarKind.local "w5"])

def globalBody94_112 : Prog (BitVec 64) :=
.seq globalBody94_110 globalBody94_111

def globalBody94_113 : Prog (BitVec 64) :=
.seq globalBody94_112 globalBody94_31

def globalBody94_114 : Prog (BitVec 64) :=
.seq globalBody94_113 globalBody94_33

def globalBody94_115 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "w6"
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "w6",
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w7")
                    (Flapjack.Exp.const 7#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w7")
                    (Flapjack.Exp.const 25#64)],
              Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w7")
                    (Flapjack.Exp.const 18#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w7")
                    (Flapjack.Exp.const 14#64)],
              Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w7")
                (Flapjack.Exp.const 3#64)],
          Flapjack.Exp.var Flapjack.VarKind.local "w15",
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w4")
                    (Flapjack.Exp.const 17#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w4")
                    (Flapjack.Exp.const 15#64)],
              Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w4")
                    (Flapjack.Exp.const 19#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w4")
                    (Flapjack.Exp.const 13#64)],
              Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w4")
                (Flapjack.Exp.const 10#64)]])
      (Flapjack.Exp.const 32#64))
    (Flapjack.Exp.const 32#64))

def globalBody94_116 : Prog (BitVec 64) :=
.seq globalBody94_114 globalBody94_115

def globalBody94_117 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "b",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "g")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "g")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "g")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "g")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "g")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "g")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "a",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "g",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.var Flapjack.VarKind.local "a"]]],
      Flapjack.Exp.const 1555081692#64, Flapjack.Exp.var Flapjack.VarKind.local "w6"])

def globalBody94_118 : Prog (BitVec 64) :=
.seq globalBody94_116 globalBody94_117

def globalBody94_119 : Prog (BitVec 64) :=
.seq globalBody94_118 globalBody94_37

def globalBody94_120 : Prog (BitVec 64) :=
.seq globalBody94_119 globalBody94_39

def globalBody94_121 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "w7"
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "w7",
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w8")
                    (Flapjack.Exp.const 7#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w8")
                    (Flapjack.Exp.const 25#64)],
              Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w8")
                    (Flapjack.Exp.const 18#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w8")
                    (Flapjack.Exp.const 14#64)],
              Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w8")
                (Flapjack.Exp.const 3#64)],
          Flapjack.Exp.var Flapjack.VarKind.local "w0",
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w5")
                    (Flapjack.Exp.const 17#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w5")
                    (Flapjack.Exp.const 15#64)],
              Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w5")
                    (Flapjack.Exp.const 19#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w5")
                    (Flapjack.Exp.const 13#64)],
              Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w5")
                (Flapjack.Exp.const 10#64)]])
      (Flapjack.Exp.const 32#64))
    (Flapjack.Exp.const 32#64))

def globalBody94_122 : Prog (BitVec 64) :=
.seq globalBody94_120 globalBody94_121

def globalBody94_123 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "a",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "f")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "f")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "f")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "f")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "f")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "f")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "h",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "f",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "g", Flapjack.Exp.var Flapjack.VarKind.local "h"]]],
      Flapjack.Exp.const 1996064986#64, Flapjack.Exp.var Flapjack.VarKind.local "w7"])

def globalBody94_124 : Prog (BitVec 64) :=
.seq globalBody94_122 globalBody94_123

def globalBody94_125 : Prog (BitVec 64) :=
.seq globalBody94_124 globalBody94_43

def globalBody94_126 : Prog (BitVec 64) :=
.seq globalBody94_125 globalBody94_45

def globalBody94_127 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "w8"
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "w8",
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w9")
                    (Flapjack.Exp.const 7#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w9")
                    (Flapjack.Exp.const 25#64)],
              Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w9")
                    (Flapjack.Exp.const 18#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w9")
                    (Flapjack.Exp.const 14#64)],
              Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w9")
                (Flapjack.Exp.const 3#64)],
          Flapjack.Exp.var Flapjack.VarKind.local "w1",
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w6")
                    (Flapjack.Exp.const 17#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w6")
                    (Flapjack.Exp.const 15#64)],
              Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w6")
                    (Flapjack.Exp.const 19#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w6")
                    (Flapjack.Exp.const 13#64)],
              Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w6")
                (Flapjack.Exp.const 10#64)]])
      (Flapjack.Exp.const 32#64))
    (Flapjack.Exp.const 32#64))

def globalBody94_128 : Prog (BitVec 64) :=
.seq globalBody94_126 globalBody94_127

def globalBody94_129 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "h",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "e")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "e")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "e")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "e")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "e")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "e")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "g",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "e",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "f", Flapjack.Exp.var Flapjack.VarKind.local "g"]]],
      Flapjack.Exp.const 18446744071968805202#64, Flapjack.Exp.var Flapjack.VarKind.local "w8"])

def globalBody94_130 : Prog (BitVec 64) :=
.seq globalBody94_128 globalBody94_129

def globalBody94_131 : Prog (BitVec 64) :=
.seq globalBody94_130 globalBody94_1

def globalBody94_132 : Prog (BitVec 64) :=
.seq globalBody94_131 globalBody94_3

def globalBody94_133 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "w9"
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "w9",
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w10")
                    (Flapjack.Exp.const 7#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w10")
                    (Flapjack.Exp.const 25#64)],
              Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w10")
                    (Flapjack.Exp.const 18#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w10")
                    (Flapjack.Exp.const 14#64)],
              Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w10")
                (Flapjack.Exp.const 3#64)],
          Flapjack.Exp.var Flapjack.VarKind.local "w2",
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w7")
                    (Flapjack.Exp.const 17#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w7")
                    (Flapjack.Exp.const 15#64)],
              Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w7")
                    (Flapjack.Exp.const 19#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w7")
                    (Flapjack.Exp.const 13#64)],
              Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w7")
                (Flapjack.Exp.const 10#64)]])
      (Flapjack.Exp.const 32#64))
    (Flapjack.Exp.const 32#64))

def globalBody94_134 : Prog (BitVec 64) :=
.seq globalBody94_132 globalBody94_133

def globalBody94_135 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "g",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "f",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "d",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.var Flapjack.VarKind.local "f"]]],
      Flapjack.Exp.const 18446744072236418669#64, Flapjack.Exp.var Flapjack.VarKind.local "w9"])

def globalBody94_136 : Prog (BitVec 64) :=
.seq globalBody94_134 globalBody94_135

def globalBody94_137 : Prog (BitVec 64) :=
.seq globalBody94_136 globalBody94_7

def globalBody94_138 : Prog (BitVec 64) :=
.seq globalBody94_137 globalBody94_9

def globalBody94_139 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "w10"
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "w10",
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w11")
                    (Flapjack.Exp.const 7#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w11")
                    (Flapjack.Exp.const 25#64)],
              Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w11")
                    (Flapjack.Exp.const 18#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w11")
                    (Flapjack.Exp.const 14#64)],
              Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w11")
                (Flapjack.Exp.const 3#64)],
          Flapjack.Exp.var Flapjack.VarKind.local "w3",
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w8")
                    (Flapjack.Exp.const 17#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w8")
                    (Flapjack.Exp.const 15#64)],
              Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w8")
                    (Flapjack.Exp.const 19#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w8")
                    (Flapjack.Exp.const 13#64)],
              Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w8")
                (Flapjack.Exp.const 10#64)]])
      (Flapjack.Exp.const 32#64))
    (Flapjack.Exp.const 32#64))

def globalBody94_140 : Prog (BitVec 64) :=
.seq globalBody94_138 globalBody94_139

def globalBody94_141 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "f",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "c")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "c")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "c")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "c")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "c")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "c")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "e",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "c",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "d", Flapjack.Exp.var Flapjack.VarKind.local "e"]]],
      Flapjack.Exp.const 18446744072367581128#64, Flapjack.Exp.var Flapjack.VarKind.local "w10"])

def globalBody94_142 : Prog (BitVec 64) :=
.seq globalBody94_140 globalBody94_141

def globalBody94_143 : Prog (BitVec 64) :=
.seq globalBody94_142 globalBody94_13

def globalBody94_144 : Prog (BitVec 64) :=
.seq globalBody94_143 globalBody94_15

def globalBody94_145 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "w11"
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "w11",
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w12")
                    (Flapjack.Exp.const 7#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w12")
                    (Flapjack.Exp.const 25#64)],
              Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w12")
                    (Flapjack.Exp.const 18#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w12")
                    (Flapjack.Exp.const 14#64)],
              Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w12")
                (Flapjack.Exp.const 3#64)],
          Flapjack.Exp.var Flapjack.VarKind.local "w4",
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w9")
                    (Flapjack.Exp.const 17#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w9")
                    (Flapjack.Exp.const 15#64)],
              Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w9")
                    (Flapjack.Exp.const 19#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w9")
                    (Flapjack.Exp.const 13#64)],
              Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w9")
                (Flapjack.Exp.const 10#64)]])
      (Flapjack.Exp.const 32#64))
    (Flapjack.Exp.const 32#64))

def globalBody94_146 : Prog (BitVec 64) :=
.seq globalBody94_144 globalBody94_145

def globalBody94_147 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "e",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "d",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "b",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "c", Flapjack.Exp.var Flapjack.VarKind.local "d"]]],
      Flapjack.Exp.const 18446744072624897991#64, Flapjack.Exp.var Flapjack.VarKind.local "w11"])

def globalBody94_148 : Prog (BitVec 64) :=
.seq globalBody94_146 globalBody94_147

def globalBody94_149 : Prog (BitVec 64) :=
.seq globalBody94_148 globalBody94_19

def globalBody94_150 : Prog (BitVec 64) :=
.seq globalBody94_149 globalBody94_21

def globalBody94_151 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "w12"
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "w12",
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w13")
                    (Flapjack.Exp.const 7#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w13")
                    (Flapjack.Exp.const 25#64)],
              Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w13")
                    (Flapjack.Exp.const 18#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w13")
                    (Flapjack.Exp.const 14#64)],
              Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w13")
                (Flapjack.Exp.const 3#64)],
          Flapjack.Exp.var Flapjack.VarKind.local "w5",
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w10")
                    (Flapjack.Exp.const 17#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w10")
                    (Flapjack.Exp.const 15#64)],
              Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w10")
                    (Flapjack.Exp.const 19#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w10")
                    (Flapjack.Exp.const 13#64)],
              Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w10")
                (Flapjack.Exp.const 10#64)]])
      (Flapjack.Exp.const 32#64))
    (Flapjack.Exp.const 32#64))

def globalBody94_152 : Prog (BitVec 64) :=
.seq globalBody94_150 globalBody94_151

def globalBody94_153 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "d",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "a")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "a")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "a")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "a")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "a")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "a")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "c",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "a",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.var Flapjack.VarKind.local "c"]]],
      Flapjack.Exp.const 18446744072751156211#64, Flapjack.Exp.var Flapjack.VarKind.local "w12"])

def globalBody94_154 : Prog (BitVec 64) :=
.seq globalBody94_152 globalBody94_153

def globalBody94_155 : Prog (BitVec 64) :=
.seq globalBody94_154 globalBody94_25

def globalBody94_156 : Prog (BitVec 64) :=
.seq globalBody94_155 globalBody94_27

def globalBody94_157 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "w13"
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "w13",
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w14")
                    (Flapjack.Exp.const 7#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w14")
                    (Flapjack.Exp.const 25#64)],
              Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w14")
                    (Flapjack.Exp.const 18#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w14")
                    (Flapjack.Exp.const 14#64)],
              Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w14")
                (Flapjack.Exp.const 3#64)],
          Flapjack.Exp.var Flapjack.VarKind.local "w6",
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w11")
                    (Flapjack.Exp.const 17#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w11")
                    (Flapjack.Exp.const 15#64)],
              Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w11")
                    (Flapjack.Exp.const 19#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w11")
                    (Flapjack.Exp.const 13#64)],
              Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w11")
                (Flapjack.Exp.const 10#64)]])
      (Flapjack.Exp.const 32#64))
    (Flapjack.Exp.const 32#64))

def globalBody94_158 : Prog (BitVec 64) :=
.seq globalBody94_156 globalBody94_157

def globalBody94_159 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "c",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "h")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "h")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "h")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "h")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "h")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "h")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "b",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "h",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "b"]]],
      Flapjack.Exp.const 18446744072999113031#64, Flapjack.Exp.var Flapjack.VarKind.local "w13"])

def globalBody94_160 : Prog (BitVec 64) :=
.seq globalBody94_158 globalBody94_159

def globalBody94_161 : Prog (BitVec 64) :=
.seq globalBody94_160 globalBody94_31

def globalBody94_162 : Prog (BitVec 64) :=
.seq globalBody94_161 globalBody94_33

def globalBody94_163 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "w14"
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "w14",
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w15")
                    (Flapjack.Exp.const 7#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w15")
                    (Flapjack.Exp.const 25#64)],
              Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w15")
                    (Flapjack.Exp.const 18#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w15")
                    (Flapjack.Exp.const 14#64)],
              Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w15")
                (Flapjack.Exp.const 3#64)],
          Flapjack.Exp.var Flapjack.VarKind.local "w7",
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w12")
                    (Flapjack.Exp.const 17#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w12")
                    (Flapjack.Exp.const 15#64)],
              Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w12")
                    (Flapjack.Exp.const 19#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w12")
                    (Flapjack.Exp.const 13#64)],
              Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w12")
                (Flapjack.Exp.const 10#64)]])
      (Flapjack.Exp.const 32#64))
    (Flapjack.Exp.const 32#64))

def globalBody94_164 : Prog (BitVec 64) :=
.seq globalBody94_162 globalBody94_163

def globalBody94_165 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "b",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "g")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "g")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "g")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "g")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "g")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "g")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "a",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "g",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.var Flapjack.VarKind.local "a"]]],
      Flapjack.Exp.const 113926993#64, Flapjack.Exp.var Flapjack.VarKind.local "w14"])

def globalBody94_166 : Prog (BitVec 64) :=
.seq globalBody94_164 globalBody94_165

def globalBody94_167 : Prog (BitVec 64) :=
.seq globalBody94_166 globalBody94_37

def globalBody94_168 : Prog (BitVec 64) :=
.seq globalBody94_167 globalBody94_39

def globalBody94_169 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "w15"
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "w15",
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w0")
                    (Flapjack.Exp.const 7#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w0")
                    (Flapjack.Exp.const 25#64)],
              Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w0")
                    (Flapjack.Exp.const 18#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w0")
                    (Flapjack.Exp.const 14#64)],
              Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w0")
                (Flapjack.Exp.const 3#64)],
          Flapjack.Exp.var Flapjack.VarKind.local "w8",
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w13")
                    (Flapjack.Exp.const 17#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w13")
                    (Flapjack.Exp.const 15#64)],
              Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w13")
                    (Flapjack.Exp.const 19#64),
                  Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "w13")
                    (Flapjack.Exp.const 13#64)],
              Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w13")
                (Flapjack.Exp.const 10#64)]])
      (Flapjack.Exp.const 32#64))
    (Flapjack.Exp.const 32#64))

def globalBody94_170 : Prog (BitVec 64) :=
.seq globalBody94_168 globalBody94_169

def globalBody94_171 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "a",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "f")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "f")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "f")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "f")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "f")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "f")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "h",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "f",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "g", Flapjack.Exp.var Flapjack.VarKind.local "h"]]],
      Flapjack.Exp.const 338241895#64, Flapjack.Exp.var Flapjack.VarKind.local "w15"])

def globalBody94_172 : Prog (BitVec 64) :=
.seq globalBody94_170 globalBody94_171

def globalBody94_173 : Prog (BitVec 64) :=
.seq globalBody94_172 globalBody94_43

def globalBody94_174 : Prog (BitVec 64) :=
.seq globalBody94_173 globalBody94_45

def globalBody94_175 : Prog (BitVec 64) :=
.seq globalBody94_174 globalBody94_79

def globalBody94_176 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "h",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "e")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "e")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "e")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "e")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "e")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "e")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "g",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "e",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "f", Flapjack.Exp.var Flapjack.VarKind.local "g"]]],
      Flapjack.Exp.const 666307205#64, Flapjack.Exp.var Flapjack.VarKind.local "w0"])

def globalBody94_177 : Prog (BitVec 64) :=
.seq globalBody94_175 globalBody94_176

def globalBody94_178 : Prog (BitVec 64) :=
.seq globalBody94_177 globalBody94_1

def globalBody94_179 : Prog (BitVec 64) :=
.seq globalBody94_178 globalBody94_3

def globalBody94_180 : Prog (BitVec 64) :=
.seq globalBody94_179 globalBody94_85

def globalBody94_181 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "g",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "f",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "d",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.var Flapjack.VarKind.local "f"]]],
      Flapjack.Exp.const 773529912#64, Flapjack.Exp.var Flapjack.VarKind.local "w1"])

def globalBody94_182 : Prog (BitVec 64) :=
.seq globalBody94_180 globalBody94_181

def globalBody94_183 : Prog (BitVec 64) :=
.seq globalBody94_182 globalBody94_7

def globalBody94_184 : Prog (BitVec 64) :=
.seq globalBody94_183 globalBody94_9

def globalBody94_185 : Prog (BitVec 64) :=
.seq globalBody94_184 globalBody94_91

def globalBody94_186 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "f",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "c")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "c")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "c")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "c")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "c")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "c")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "e",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "c",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "d", Flapjack.Exp.var Flapjack.VarKind.local "e"]]],
      Flapjack.Exp.const 1294757372#64, Flapjack.Exp.var Flapjack.VarKind.local "w2"])

def globalBody94_187 : Prog (BitVec 64) :=
.seq globalBody94_185 globalBody94_186

def globalBody94_188 : Prog (BitVec 64) :=
.seq globalBody94_187 globalBody94_13

def globalBody94_189 : Prog (BitVec 64) :=
.seq globalBody94_188 globalBody94_15

def globalBody94_190 : Prog (BitVec 64) :=
.seq globalBody94_189 globalBody94_97

def globalBody94_191 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "e",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "d",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "b",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "c", Flapjack.Exp.var Flapjack.VarKind.local "d"]]],
      Flapjack.Exp.const 1396182291#64, Flapjack.Exp.var Flapjack.VarKind.local "w3"])

def globalBody94_192 : Prog (BitVec 64) :=
.seq globalBody94_190 globalBody94_191

def globalBody94_193 : Prog (BitVec 64) :=
.seq globalBody94_192 globalBody94_19

def globalBody94_194 : Prog (BitVec 64) :=
.seq globalBody94_193 globalBody94_21

def globalBody94_195 : Prog (BitVec 64) :=
.seq globalBody94_194 globalBody94_103

def globalBody94_196 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "d",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "a")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "a")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "a")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "a")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "a")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "a")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "c",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "a",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.var Flapjack.VarKind.local "c"]]],
      Flapjack.Exp.const 1695183700#64, Flapjack.Exp.var Flapjack.VarKind.local "w4"])

def globalBody94_197 : Prog (BitVec 64) :=
.seq globalBody94_195 globalBody94_196

def globalBody94_198 : Prog (BitVec 64) :=
.seq globalBody94_197 globalBody94_25

def globalBody94_199 : Prog (BitVec 64) :=
.seq globalBody94_198 globalBody94_27

def globalBody94_200 : Prog (BitVec 64) :=
.seq globalBody94_199 globalBody94_109

def globalBody94_201 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "c",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "h")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "h")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "h")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "h")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "h")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "h")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "b",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "h",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "b"]]],
      Flapjack.Exp.const 1986661051#64, Flapjack.Exp.var Flapjack.VarKind.local "w5"])

def globalBody94_202 : Prog (BitVec 64) :=
.seq globalBody94_200 globalBody94_201

def globalBody94_203 : Prog (BitVec 64) :=
.seq globalBody94_202 globalBody94_31

def globalBody94_204 : Prog (BitVec 64) :=
.seq globalBody94_203 globalBody94_33

def globalBody94_205 : Prog (BitVec 64) :=
.seq globalBody94_204 globalBody94_115

def globalBody94_206 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "b",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "g")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "g")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "g")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "g")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "g")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "g")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "a",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "g",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.var Flapjack.VarKind.local "a"]]],
      Flapjack.Exp.const 18446744071591610670#64, Flapjack.Exp.var Flapjack.VarKind.local "w6"])

def globalBody94_207 : Prog (BitVec 64) :=
.seq globalBody94_205 globalBody94_206

def globalBody94_208 : Prog (BitVec 64) :=
.seq globalBody94_207 globalBody94_37

def globalBody94_209 : Prog (BitVec 64) :=
.seq globalBody94_208 globalBody94_39

def globalBody94_210 : Prog (BitVec 64) :=
.seq globalBody94_209 globalBody94_121

def globalBody94_211 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "a",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "f")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "f")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "f")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "f")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "f")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "f")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "h",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "f",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "g", Flapjack.Exp.var Flapjack.VarKind.local "h"]]],
      Flapjack.Exp.const 18446744071871540357#64, Flapjack.Exp.var Flapjack.VarKind.local "w7"])

def globalBody94_212 : Prog (BitVec 64) :=
.seq globalBody94_210 globalBody94_211

def globalBody94_213 : Prog (BitVec 64) :=
.seq globalBody94_212 globalBody94_43

def globalBody94_214 : Prog (BitVec 64) :=
.seq globalBody94_213 globalBody94_45

def globalBody94_215 : Prog (BitVec 64) :=
.seq globalBody94_214 globalBody94_127

def globalBody94_216 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "h",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "e")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "e")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "e")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "e")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "e")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "e")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "g",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "e",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "f", Flapjack.Exp.var Flapjack.VarKind.local "g"]]],
      Flapjack.Exp.const 18446744072145070241#64, Flapjack.Exp.var Flapjack.VarKind.local "w8"])

def globalBody94_217 : Prog (BitVec 64) :=
.seq globalBody94_215 globalBody94_216

def globalBody94_218 : Prog (BitVec 64) :=
.seq globalBody94_217 globalBody94_1

def globalBody94_219 : Prog (BitVec 64) :=
.seq globalBody94_218 globalBody94_3

def globalBody94_220 : Prog (BitVec 64) :=
.seq globalBody94_219 globalBody94_133

def globalBody94_221 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "g",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "f",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "d",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.var Flapjack.VarKind.local "f"]]],
      Flapjack.Exp.const 18446744072234886731#64, Flapjack.Exp.var Flapjack.VarKind.local "w9"])

def globalBody94_222 : Prog (BitVec 64) :=
.seq globalBody94_220 globalBody94_221

def globalBody94_223 : Prog (BitVec 64) :=
.seq globalBody94_222 globalBody94_7

def globalBody94_224 : Prog (BitVec 64) :=
.seq globalBody94_223 globalBody94_9

def globalBody94_225 : Prog (BitVec 64) :=
.seq globalBody94_224 globalBody94_139

def globalBody94_226 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "f",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "c")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "c")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "c")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "c")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "c")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "c")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "e",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "c",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "d", Flapjack.Exp.var Flapjack.VarKind.local "e"]]],
      Flapjack.Exp.const 18446744072674315120#64, Flapjack.Exp.var Flapjack.VarKind.local "w10"])

def globalBody94_227 : Prog (BitVec 64) :=
.seq globalBody94_225 globalBody94_226

def globalBody94_228 : Prog (BitVec 64) :=
.seq globalBody94_227 globalBody94_13

def globalBody94_229 : Prog (BitVec 64) :=
.seq globalBody94_228 globalBody94_15

def globalBody94_230 : Prog (BitVec 64) :=
.seq globalBody94_229 globalBody94_145

def globalBody94_231 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "e",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "d",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "b",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "c", Flapjack.Exp.var Flapjack.VarKind.local "d"]]],
      Flapjack.Exp.const 18446744072760349091#64, Flapjack.Exp.var Flapjack.VarKind.local "w11"])

def globalBody94_232 : Prog (BitVec 64) :=
.seq globalBody94_230 globalBody94_231

def globalBody94_233 : Prog (BitVec 64) :=
.seq globalBody94_232 globalBody94_19

def globalBody94_234 : Prog (BitVec 64) :=
.seq globalBody94_233 globalBody94_21

def globalBody94_235 : Prog (BitVec 64) :=
.seq globalBody94_234 globalBody94_151

def globalBody94_236 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "d",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "a")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "a")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "a")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "a")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "a")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "a")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "c",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "a",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.var Flapjack.VarKind.local "c"]]],
      Flapjack.Exp.const 18446744072930650137#64, Flapjack.Exp.var Flapjack.VarKind.local "w12"])

def globalBody94_237 : Prog (BitVec 64) :=
.seq globalBody94_235 globalBody94_236

def globalBody94_238 : Prog (BitVec 64) :=
.seq globalBody94_237 globalBody94_25

def globalBody94_239 : Prog (BitVec 64) :=
.seq globalBody94_238 globalBody94_27

def globalBody94_240 : Prog (BitVec 64) :=
.seq globalBody94_239 globalBody94_157

def globalBody94_241 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "c",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "h")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "h")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "h")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "h")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "h")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "h")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "b",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "h",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "b"]]],
      Flapjack.Exp.const 18446744073014937124#64, Flapjack.Exp.var Flapjack.VarKind.local "w13"])

def globalBody94_242 : Prog (BitVec 64) :=
.seq globalBody94_240 globalBody94_241

def globalBody94_243 : Prog (BitVec 64) :=
.seq globalBody94_242 globalBody94_31

def globalBody94_244 : Prog (BitVec 64) :=
.seq globalBody94_243 globalBody94_33

def globalBody94_245 : Prog (BitVec 64) :=
.seq globalBody94_244 globalBody94_163

def globalBody94_246 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "b",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "g")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "g")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "g")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "g")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "g")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "g")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "a",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "g",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.var Flapjack.VarKind.local "a"]]],
      Flapjack.Exp.const 18446744073509156229#64, Flapjack.Exp.var Flapjack.VarKind.local "w14"])

def globalBody94_247 : Prog (BitVec 64) :=
.seq globalBody94_245 globalBody94_246

def globalBody94_248 : Prog (BitVec 64) :=
.seq globalBody94_247 globalBody94_37

def globalBody94_249 : Prog (BitVec 64) :=
.seq globalBody94_248 globalBody94_39

def globalBody94_250 : Prog (BitVec 64) :=
.seq globalBody94_249 globalBody94_169

def globalBody94_251 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "a",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "f")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "f")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "f")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "f")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "f")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "f")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "h",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "f",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "g", Flapjack.Exp.var Flapjack.VarKind.local "h"]]],
      Flapjack.Exp.const 275423344#64, Flapjack.Exp.var Flapjack.VarKind.local "w15"])

def globalBody94_252 : Prog (BitVec 64) :=
.seq globalBody94_250 globalBody94_251

def globalBody94_253 : Prog (BitVec 64) :=
.seq globalBody94_252 globalBody94_43

def globalBody94_254 : Prog (BitVec 64) :=
.seq globalBody94_253 globalBody94_45

def globalBody94_255 : Prog (BitVec 64) :=
.seq globalBody94_254 globalBody94_79

def globalBody94_256 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "h",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "e")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "e")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "e")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "e")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "e")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "e")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "g",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "e",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "f", Flapjack.Exp.var Flapjack.VarKind.local "g"]]],
      Flapjack.Exp.const 430227734#64, Flapjack.Exp.var Flapjack.VarKind.local "w0"])

def globalBody94_257 : Prog (BitVec 64) :=
.seq globalBody94_255 globalBody94_256

def globalBody94_258 : Prog (BitVec 64) :=
.seq globalBody94_257 globalBody94_1

def globalBody94_259 : Prog (BitVec 64) :=
.seq globalBody94_258 globalBody94_3

def globalBody94_260 : Prog (BitVec 64) :=
.seq globalBody94_259 globalBody94_85

def globalBody94_261 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "g",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "f",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "d",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.var Flapjack.VarKind.local "f"]]],
      Flapjack.Exp.const 506948616#64, Flapjack.Exp.var Flapjack.VarKind.local "w1"])

def globalBody94_262 : Prog (BitVec 64) :=
.seq globalBody94_260 globalBody94_261

def globalBody94_263 : Prog (BitVec 64) :=
.seq globalBody94_262 globalBody94_7

def globalBody94_264 : Prog (BitVec 64) :=
.seq globalBody94_263 globalBody94_9

def globalBody94_265 : Prog (BitVec 64) :=
.seq globalBody94_264 globalBody94_91

def globalBody94_266 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "f",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "c")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "c")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "c")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "c")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "c")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "c")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "e",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "c",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "d", Flapjack.Exp.var Flapjack.VarKind.local "e"]]],
      Flapjack.Exp.const 659060556#64, Flapjack.Exp.var Flapjack.VarKind.local "w2"])

def globalBody94_267 : Prog (BitVec 64) :=
.seq globalBody94_265 globalBody94_266

def globalBody94_268 : Prog (BitVec 64) :=
.seq globalBody94_267 globalBody94_13

def globalBody94_269 : Prog (BitVec 64) :=
.seq globalBody94_268 globalBody94_15

def globalBody94_270 : Prog (BitVec 64) :=
.seq globalBody94_269 globalBody94_97

def globalBody94_271 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "e",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "d",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "b",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "c", Flapjack.Exp.var Flapjack.VarKind.local "d"]]],
      Flapjack.Exp.const 883997877#64, Flapjack.Exp.var Flapjack.VarKind.local "w3"])

def globalBody94_272 : Prog (BitVec 64) :=
.seq globalBody94_270 globalBody94_271

def globalBody94_273 : Prog (BitVec 64) :=
.seq globalBody94_272 globalBody94_19

def globalBody94_274 : Prog (BitVec 64) :=
.seq globalBody94_273 globalBody94_21

def globalBody94_275 : Prog (BitVec 64) :=
.seq globalBody94_274 globalBody94_103

def globalBody94_276 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "d",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "a")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "a")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "a")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "a")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "a")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "a")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "c",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "a",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.var Flapjack.VarKind.local "c"]]],
      Flapjack.Exp.const 958139571#64, Flapjack.Exp.var Flapjack.VarKind.local "w4"])

def globalBody94_277 : Prog (BitVec 64) :=
.seq globalBody94_275 globalBody94_276

def globalBody94_278 : Prog (BitVec 64) :=
.seq globalBody94_277 globalBody94_25

def globalBody94_279 : Prog (BitVec 64) :=
.seq globalBody94_278 globalBody94_27

def globalBody94_280 : Prog (BitVec 64) :=
.seq globalBody94_279 globalBody94_109

def globalBody94_281 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "c",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "h")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "h")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "h")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "h")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "h")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "h")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "b",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "h",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "b"]]],
      Flapjack.Exp.const 1322822218#64, Flapjack.Exp.var Flapjack.VarKind.local "w5"])

def globalBody94_282 : Prog (BitVec 64) :=
.seq globalBody94_280 globalBody94_281

def globalBody94_283 : Prog (BitVec 64) :=
.seq globalBody94_282 globalBody94_31

def globalBody94_284 : Prog (BitVec 64) :=
.seq globalBody94_283 globalBody94_33

def globalBody94_285 : Prog (BitVec 64) :=
.seq globalBody94_284 globalBody94_115

def globalBody94_286 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "b",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "g")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "g")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "g")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "g")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "g")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "g")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "a",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "g",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.var Flapjack.VarKind.local "a"]]],
      Flapjack.Exp.const 1537002063#64, Flapjack.Exp.var Flapjack.VarKind.local "w6"])

def globalBody94_287 : Prog (BitVec 64) :=
.seq globalBody94_285 globalBody94_286

def globalBody94_288 : Prog (BitVec 64) :=
.seq globalBody94_287 globalBody94_37

def globalBody94_289 : Prog (BitVec 64) :=
.seq globalBody94_288 globalBody94_39

def globalBody94_290 : Prog (BitVec 64) :=
.seq globalBody94_289 globalBody94_121

def globalBody94_291 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "a",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "f")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "f")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "f")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "f")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "f")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "f")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "h",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "f",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "g", Flapjack.Exp.var Flapjack.VarKind.local "h"]]],
      Flapjack.Exp.const 1747873779#64, Flapjack.Exp.var Flapjack.VarKind.local "w7"])

def globalBody94_292 : Prog (BitVec 64) :=
.seq globalBody94_290 globalBody94_291

def globalBody94_293 : Prog (BitVec 64) :=
.seq globalBody94_292 globalBody94_43

def globalBody94_294 : Prog (BitVec 64) :=
.seq globalBody94_293 globalBody94_45

def globalBody94_295 : Prog (BitVec 64) :=
.seq globalBody94_294 globalBody94_127

def globalBody94_296 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "h",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "e")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "e")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "e")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "e")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "e")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "e")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "g",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "e",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "f", Flapjack.Exp.var Flapjack.VarKind.local "g"]]],
      Flapjack.Exp.const 1955562222#64, Flapjack.Exp.var Flapjack.VarKind.local "w8"])

def globalBody94_297 : Prog (BitVec 64) :=
.seq globalBody94_295 globalBody94_296

def globalBody94_298 : Prog (BitVec 64) :=
.seq globalBody94_297 globalBody94_1

def globalBody94_299 : Prog (BitVec 64) :=
.seq globalBody94_298 globalBody94_3

def globalBody94_300 : Prog (BitVec 64) :=
.seq globalBody94_299 globalBody94_133

def globalBody94_301 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "g",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "f",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "d",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.var Flapjack.VarKind.local "f"]]],
      Flapjack.Exp.const 2024104815#64, Flapjack.Exp.var Flapjack.VarKind.local "w9"])

def globalBody94_302 : Prog (BitVec 64) :=
.seq globalBody94_300 globalBody94_301

def globalBody94_303 : Prog (BitVec 64) :=
.seq globalBody94_302 globalBody94_7

def globalBody94_304 : Prog (BitVec 64) :=
.seq globalBody94_303 globalBody94_9

def globalBody94_305 : Prog (BitVec 64) :=
.seq globalBody94_304 globalBody94_139

def globalBody94_306 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "f",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "c")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "c")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "c")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "c")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "c")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "c")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "e",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "c",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "d", Flapjack.Exp.var Flapjack.VarKind.local "e"]]],
      Flapjack.Exp.const 18446744071642314772#64, Flapjack.Exp.var Flapjack.VarKind.local "w10"])

def globalBody94_307 : Prog (BitVec 64) :=
.seq globalBody94_305 globalBody94_306

def globalBody94_308 : Prog (BitVec 64) :=
.seq globalBody94_307 globalBody94_13

def globalBody94_309 : Prog (BitVec 64) :=
.seq globalBody94_308 globalBody94_15

def globalBody94_310 : Prog (BitVec 64) :=
.seq globalBody94_309 globalBody94_145

def globalBody94_311 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "e",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "d",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "b",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "c", Flapjack.Exp.var Flapjack.VarKind.local "d"]]],
      Flapjack.Exp.const 18446744071776436744#64, Flapjack.Exp.var Flapjack.VarKind.local "w11"])

def globalBody94_312 : Prog (BitVec 64) :=
.seq globalBody94_310 globalBody94_311

def globalBody94_313 : Prog (BitVec 64) :=
.seq globalBody94_312 globalBody94_19

def globalBody94_314 : Prog (BitVec 64) :=
.seq globalBody94_313 globalBody94_21

def globalBody94_315 : Prog (BitVec 64) :=
.seq globalBody94_314 globalBody94_151

def globalBody94_316 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "d",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "a")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "a")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "a")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "a")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "a")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "a")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "c",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "a",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.var Flapjack.VarKind.local "c"]]],
      Flapjack.Exp.const 18446744071843020794#64, Flapjack.Exp.var Flapjack.VarKind.local "w12"])

def globalBody94_317 : Prog (BitVec 64) :=
.seq globalBody94_315 globalBody94_316

def globalBody94_318 : Prog (BitVec 64) :=
.seq globalBody94_317 globalBody94_25

def globalBody94_319 : Prog (BitVec 64) :=
.seq globalBody94_318 globalBody94_27

def globalBody94_320 : Prog (BitVec 64) :=
.seq globalBody94_319 globalBody94_157

def globalBody94_321 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "c",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "h")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "h")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "h")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "h")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "h")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "h")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "b",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "h",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "b"]]],
      Flapjack.Exp.const 18446744072171318507#64, Flapjack.Exp.var Flapjack.VarKind.local "w13"])

def globalBody94_322 : Prog (BitVec 64) :=
.seq globalBody94_320 globalBody94_321

def globalBody94_323 : Prog (BitVec 64) :=
.seq globalBody94_322 globalBody94_31

def globalBody94_324 : Prog (BitVec 64) :=
.seq globalBody94_323 globalBody94_33

def globalBody94_325 : Prog (BitVec 64) :=
.seq globalBody94_324 globalBody94_163

def globalBody94_326 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "b",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "g")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "g")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "g")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "g")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "g")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "g")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "a",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "g",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.var Flapjack.VarKind.local "a"]]],
      Flapjack.Exp.const 18446744072618615799#64, Flapjack.Exp.var Flapjack.VarKind.local "w14"])

def globalBody94_327 : Prog (BitVec 64) :=
.seq globalBody94_325 globalBody94_326

def globalBody94_328 : Prog (BitVec 64) :=
.seq globalBody94_327 globalBody94_37

def globalBody94_329 : Prog (BitVec 64) :=
.seq globalBody94_328 globalBody94_39

def globalBody94_330 : Prog (BitVec 64) :=
.seq globalBody94_329 globalBody94_169

def globalBody94_331 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "a",
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "f")
                (Flapjack.Exp.const 6#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "f")
                (Flapjack.Exp.const 26#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "f")
                (Flapjack.Exp.const 11#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "f")
                (Flapjack.Exp.const 21#64)],
          Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "f")
                (Flapjack.Exp.const 25#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "f")
                (Flapjack.Exp.const 7#64)]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.var Flapjack.VarKind.local "h",
          Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.var Flapjack.VarKind.local "f",
              Flapjack.Exp.op Flapjack.BinOp.xor
                [Flapjack.Exp.var Flapjack.VarKind.local "g", Flapjack.Exp.var Flapjack.VarKind.local "h"]]],
      Flapjack.Exp.const 18446744072743909618#64, Flapjack.Exp.var Flapjack.VarKind.local "w15"])

def globalBody94_332 : Prog (BitVec 64) :=
.seq globalBody94_330 globalBody94_331

def globalBody94_333 : Prog (BitVec 64) :=
.seq globalBody94_332 globalBody94_43

def globalBody94_334 : Prog (BitVec 64) :=
.seq globalBody94_333 globalBody94_45

def globalBody94_335 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 0#64]),
          Flapjack.Exp.var Flapjack.VarKind.local "a"])
      (Flapjack.Exp.const 32#64))
    (Flapjack.Exp.const 32#64))

def globalBody94_336 : Prog (BitVec 64) :=
.seq globalBody94_334 globalBody94_335

def globalBody94_337 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 8#64]),
          Flapjack.Exp.var Flapjack.VarKind.local "b"])
      (Flapjack.Exp.const 32#64))
    (Flapjack.Exp.const 32#64))

def globalBody94_338 : Prog (BitVec 64) :=
.seq globalBody94_336 globalBody94_337

def globalBody94_339 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 16#64]),
          Flapjack.Exp.var Flapjack.VarKind.local "c"])
      (Flapjack.Exp.const 32#64))
    (Flapjack.Exp.const 32#64))

def globalBody94_340 : Prog (BitVec 64) :=
.seq globalBody94_338 globalBody94_339

def globalBody94_341 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 24#64]),
          Flapjack.Exp.var Flapjack.VarKind.local "d"])
      (Flapjack.Exp.const 32#64))
    (Flapjack.Exp.const 32#64))

def globalBody94_342 : Prog (BitVec 64) :=
.seq globalBody94_340 globalBody94_341

def globalBody94_343 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 32#64]),
          Flapjack.Exp.var Flapjack.VarKind.local "e"])
      (Flapjack.Exp.const 32#64))
    (Flapjack.Exp.const 32#64))

def globalBody94_344 : Prog (BitVec 64) :=
.seq globalBody94_342 globalBody94_343

def globalBody94_345 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 40#64]),
          Flapjack.Exp.var Flapjack.VarKind.local "f"])
      (Flapjack.Exp.const 32#64))
    (Flapjack.Exp.const 32#64))

def globalBody94_346 : Prog (BitVec 64) :=
.seq globalBody94_344 globalBody94_345

def globalBody94_347 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 48#64]),
          Flapjack.Exp.var Flapjack.VarKind.local "g"])
      (Flapjack.Exp.const 32#64))
    (Flapjack.Exp.const 32#64))

def globalBody94_348 : Prog (BitVec 64) :=
.seq globalBody94_346 globalBody94_347

def globalBody94_349 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 56#64]),
          Flapjack.Exp.var Flapjack.VarKind.local "h"])
      (Flapjack.Exp.const 32#64))
    (Flapjack.Exp.const 32#64))

def globalBody94_350 : Prog (BitVec 64) :=
.seq globalBody94_348 globalBody94_349

def globalBody94_351 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody94_352 : Prog (BitVec 64) :=
.seq globalBody94_350 globalBody94_351

def globalBody94_353 : Prog (BitVec 64) :=
.dec ("t1") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody94_352

def globalBody94_354 : Prog (BitVec 64) :=
.dec ("h") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 56#64])) globalBody94_353

def globalBody94_355 : Prog (BitVec 64) :=
.dec ("g") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 48#64])) globalBody94_354

def globalBody94_356 : Prog (BitVec 64) :=
.dec ("f") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 40#64])) globalBody94_355

def globalBody94_357 : Prog (BitVec 64) :=
.dec ("e") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 32#64])) globalBody94_356

def globalBody94_358 : Prog (BitVec 64) :=
.dec ("d") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 24#64])) globalBody94_357

def globalBody94_359 : Prog (BitVec 64) :=
.dec ("c") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 16#64])) globalBody94_358

def globalBody94_360 : Prog (BitVec 64) :=
.dec ("b") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 8#64])) globalBody94_359

def globalBody94_361 : Prog (BitVec 64) :=
.dec ("a") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 0#64])) globalBody94_360

def globalBody94_362 : Prog (BitVec 64) :=
.dec ("w15") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.or
  [Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 60#64]))
      (Flapjack.Exp.const 24#64),
    Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 60#64, Flapjack.Exp.const 1#64]))
      (Flapjack.Exp.const 16#64),
    Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 60#64, Flapjack.Exp.const 2#64]))
      (Flapjack.Exp.const 8#64),
    Flapjack.Exp.loadByte
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 60#64, Flapjack.Exp.const 3#64])]) globalBody94_361

def globalBody94_363 : Prog (BitVec 64) :=
.dec ("w14") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.or
  [Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 56#64]))
      (Flapjack.Exp.const 24#64),
    Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 56#64, Flapjack.Exp.const 1#64]))
      (Flapjack.Exp.const 16#64),
    Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 56#64, Flapjack.Exp.const 2#64]))
      (Flapjack.Exp.const 8#64),
    Flapjack.Exp.loadByte
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 56#64, Flapjack.Exp.const 3#64])]) globalBody94_362

def globalBody94_364 : Prog (BitVec 64) :=
.dec ("w13") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.or
  [Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 52#64]))
      (Flapjack.Exp.const 24#64),
    Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 52#64, Flapjack.Exp.const 1#64]))
      (Flapjack.Exp.const 16#64),
    Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 52#64, Flapjack.Exp.const 2#64]))
      (Flapjack.Exp.const 8#64),
    Flapjack.Exp.loadByte
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 52#64, Flapjack.Exp.const 3#64])]) globalBody94_363

def globalBody94_365 : Prog (BitVec 64) :=
.dec ("w12") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.or
  [Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 48#64]))
      (Flapjack.Exp.const 24#64),
    Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 48#64, Flapjack.Exp.const 1#64]))
      (Flapjack.Exp.const 16#64),
    Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 48#64, Flapjack.Exp.const 2#64]))
      (Flapjack.Exp.const 8#64),
    Flapjack.Exp.loadByte
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 48#64, Flapjack.Exp.const 3#64])]) globalBody94_364

def globalBody94_366 : Prog (BitVec 64) :=
.dec ("w11") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.or
  [Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 44#64]))
      (Flapjack.Exp.const 24#64),
    Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 44#64, Flapjack.Exp.const 1#64]))
      (Flapjack.Exp.const 16#64),
    Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 44#64, Flapjack.Exp.const 2#64]))
      (Flapjack.Exp.const 8#64),
    Flapjack.Exp.loadByte
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 44#64, Flapjack.Exp.const 3#64])]) globalBody94_365

def globalBody94_367 : Prog (BitVec 64) :=
.dec ("w10") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.or
  [Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 40#64]))
      (Flapjack.Exp.const 24#64),
    Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 40#64, Flapjack.Exp.const 1#64]))
      (Flapjack.Exp.const 16#64),
    Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 40#64, Flapjack.Exp.const 2#64]))
      (Flapjack.Exp.const 8#64),
    Flapjack.Exp.loadByte
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 40#64, Flapjack.Exp.const 3#64])]) globalBody94_366

def globalBody94_368 : Prog (BitVec 64) :=
.dec ("w9") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.or
  [Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 36#64]))
      (Flapjack.Exp.const 24#64),
    Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 36#64, Flapjack.Exp.const 1#64]))
      (Flapjack.Exp.const 16#64),
    Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 36#64, Flapjack.Exp.const 2#64]))
      (Flapjack.Exp.const 8#64),
    Flapjack.Exp.loadByte
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 36#64, Flapjack.Exp.const 3#64])]) globalBody94_367

def globalBody94_369 : Prog (BitVec 64) :=
.dec ("w8") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.or
  [Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 32#64]))
      (Flapjack.Exp.const 24#64),
    Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 32#64, Flapjack.Exp.const 1#64]))
      (Flapjack.Exp.const 16#64),
    Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 32#64, Flapjack.Exp.const 2#64]))
      (Flapjack.Exp.const 8#64),
    Flapjack.Exp.loadByte
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 32#64, Flapjack.Exp.const 3#64])]) globalBody94_368

def globalBody94_370 : Prog (BitVec 64) :=
.dec ("w7") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.or
  [Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 28#64]))
      (Flapjack.Exp.const 24#64),
    Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 28#64, Flapjack.Exp.const 1#64]))
      (Flapjack.Exp.const 16#64),
    Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 28#64, Flapjack.Exp.const 2#64]))
      (Flapjack.Exp.const 8#64),
    Flapjack.Exp.loadByte
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 28#64, Flapjack.Exp.const 3#64])]) globalBody94_369

def globalBody94_371 : Prog (BitVec 64) :=
.dec ("w6") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.or
  [Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 24#64]))
      (Flapjack.Exp.const 24#64),
    Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 24#64, Flapjack.Exp.const 1#64]))
      (Flapjack.Exp.const 16#64),
    Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 24#64, Flapjack.Exp.const 2#64]))
      (Flapjack.Exp.const 8#64),
    Flapjack.Exp.loadByte
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 24#64, Flapjack.Exp.const 3#64])]) globalBody94_370

def globalBody94_372 : Prog (BitVec 64) :=
.dec ("w5") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.or
  [Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 20#64]))
      (Flapjack.Exp.const 24#64),
    Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 20#64, Flapjack.Exp.const 1#64]))
      (Flapjack.Exp.const 16#64),
    Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 20#64, Flapjack.Exp.const 2#64]))
      (Flapjack.Exp.const 8#64),
    Flapjack.Exp.loadByte
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 20#64, Flapjack.Exp.const 3#64])]) globalBody94_371

def globalBody94_373 : Prog (BitVec 64) :=
.dec ("w4") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.or
  [Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 16#64]))
      (Flapjack.Exp.const 24#64),
    Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 16#64, Flapjack.Exp.const 1#64]))
      (Flapjack.Exp.const 16#64),
    Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 16#64, Flapjack.Exp.const 2#64]))
      (Flapjack.Exp.const 8#64),
    Flapjack.Exp.loadByte
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 16#64, Flapjack.Exp.const 3#64])]) globalBody94_372

def globalBody94_374 : Prog (BitVec 64) :=
.dec ("w3") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.or
  [Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 12#64]))
      (Flapjack.Exp.const 24#64),
    Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 12#64, Flapjack.Exp.const 1#64]))
      (Flapjack.Exp.const 16#64),
    Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 12#64, Flapjack.Exp.const 2#64]))
      (Flapjack.Exp.const 8#64),
    Flapjack.Exp.loadByte
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 12#64, Flapjack.Exp.const 3#64])]) globalBody94_373

def globalBody94_375 : Prog (BitVec 64) :=
.dec ("w2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.or
  [Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 8#64]))
      (Flapjack.Exp.const 24#64),
    Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 8#64, Flapjack.Exp.const 1#64]))
      (Flapjack.Exp.const 16#64),
    Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 8#64, Flapjack.Exp.const 2#64]))
      (Flapjack.Exp.const 8#64),
    Flapjack.Exp.loadByte
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 8#64, Flapjack.Exp.const 3#64])]) globalBody94_374

def globalBody94_376 : Prog (BitVec 64) :=
.dec ("w1") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.or
  [Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 4#64]))
      (Flapjack.Exp.const 24#64),
    Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 4#64, Flapjack.Exp.const 1#64]))
      (Flapjack.Exp.const 16#64),
    Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 4#64, Flapjack.Exp.const 2#64]))
      (Flapjack.Exp.const 8#64),
    Flapjack.Exp.loadByte
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 4#64, Flapjack.Exp.const 3#64])]) globalBody94_375

def globalBody94_377 : Prog (BitVec 64) :=
.dec ("w0") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.or
  [Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 0#64]))
      (Flapjack.Exp.const 24#64),
    Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 0#64, Flapjack.Exp.const 1#64]))
      (Flapjack.Exp.const 16#64),
    Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 0#64, Flapjack.Exp.const 2#64]))
      (Flapjack.Exp.const 8#64),
    Flapjack.Exp.loadByte
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 0#64, Flapjack.Exp.const 3#64])]) globalBody94_376

def globalData94 : Decl (BitVec 64) :=
.function { name := "sha256_block", inline := false, exported := false, params := [("stp", Flapjack.Shape.one), ("blk", Flapjack.Shape.one)], body := globalBody94_377, returnShape := (Flapjack.Shape.one) }
def globalOutput94 := Pancake.PanLang.declToHOL globalData94
end InitECandidate.Proofs.FrontendStages.Declarations
