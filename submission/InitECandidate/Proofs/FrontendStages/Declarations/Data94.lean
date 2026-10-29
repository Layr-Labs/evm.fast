import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify78
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body94_0 : Prog (BitVec 64) :=
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

def body94_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d"
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "d", Flapjack.Exp.var Flapjack.VarKind.local "t1"])
      (Flapjack.Exp.const 32#64))
    (Flapjack.Exp.const 32#64))

def body94_2 : Prog (BitVec 64) :=
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

def body94_3 : Prog (BitVec 64) :=
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

def body94_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "c"
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "c", Flapjack.Exp.var Flapjack.VarKind.local "t1"])
      (Flapjack.Exp.const 32#64))
    (Flapjack.Exp.const 32#64))

def body94_5 : Prog (BitVec 64) :=
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

def body94_6 : Prog (BitVec 64) :=
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

def body94_7 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "b"
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.var Flapjack.VarKind.local "t1"])
      (Flapjack.Exp.const 32#64))
    (Flapjack.Exp.const 32#64))

def body94_8 : Prog (BitVec 64) :=
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

def body94_9 : Prog (BitVec 64) :=
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

def body94_10 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a"
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "t1"])
      (Flapjack.Exp.const 32#64))
    (Flapjack.Exp.const 32#64))

def body94_11 : Prog (BitVec 64) :=
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

def body94_12 : Prog (BitVec 64) :=
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

def body94_13 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "h"
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.var Flapjack.VarKind.local "t1"])
      (Flapjack.Exp.const 32#64))
    (Flapjack.Exp.const 32#64))

def body94_14 : Prog (BitVec 64) :=
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

def body94_15 : Prog (BitVec 64) :=
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

def body94_16 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "g"
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "g", Flapjack.Exp.var Flapjack.VarKind.local "t1"])
      (Flapjack.Exp.const 32#64))
    (Flapjack.Exp.const 32#64))

def body94_17 : Prog (BitVec 64) :=
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

def body94_18 : Prog (BitVec 64) :=
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

def body94_19 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "f"
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "f", Flapjack.Exp.var Flapjack.VarKind.local "t1"])
      (Flapjack.Exp.const 32#64))
    (Flapjack.Exp.const 32#64))

def body94_20 : Prog (BitVec 64) :=
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

def body94_21 : Prog (BitVec 64) :=
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

def body94_22 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "e"
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.shift Flapjack.Shift.lsl
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.var Flapjack.VarKind.local "t1"])
      (Flapjack.Exp.const 32#64))
    (Flapjack.Exp.const 32#64))

def body94_23 : Prog (BitVec 64) :=
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

def body94_24 : Prog (BitVec 64) :=
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

def body94_25 : Prog (BitVec 64) :=
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

def body94_26 : Prog (BitVec 64) :=
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

def body94_27 : Prog (BitVec 64) :=
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

def body94_28 : Prog (BitVec 64) :=
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

def body94_29 : Prog (BitVec 64) :=
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

def body94_30 : Prog (BitVec 64) :=
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

def body94_31 : Prog (BitVec 64) :=
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

def body94_32 : Prog (BitVec 64) :=
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

def body94_33 : Prog (BitVec 64) :=
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

def body94_34 : Prog (BitVec 64) :=
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

def body94_35 : Prog (BitVec 64) :=
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

def body94_36 : Prog (BitVec 64) :=
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

def body94_37 : Prog (BitVec 64) :=
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

def body94_38 : Prog (BitVec 64) :=
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

def body94_39 : Prog (BitVec 64) :=
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

def body94_40 : Prog (BitVec 64) :=
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

def body94_41 : Prog (BitVec 64) :=
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

def body94_42 : Prog (BitVec 64) :=
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

def body94_43 : Prog (BitVec 64) :=
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

def body94_44 : Prog (BitVec 64) :=
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

def body94_45 : Prog (BitVec 64) :=
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

def body94_46 : Prog (BitVec 64) :=
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

def body94_47 : Prog (BitVec 64) :=
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

def body94_48 : Prog (BitVec 64) :=
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

def body94_49 : Prog (BitVec 64) :=
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

def body94_50 : Prog (BitVec 64) :=
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

def body94_51 : Prog (BitVec 64) :=
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

def body94_52 : Prog (BitVec 64) :=
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

def body94_53 : Prog (BitVec 64) :=
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

def body94_54 : Prog (BitVec 64) :=
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

def body94_55 : Prog (BitVec 64) :=
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

def body94_56 : Prog (BitVec 64) :=
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

def body94_57 : Prog (BitVec 64) :=
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

def body94_58 : Prog (BitVec 64) :=
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

def body94_59 : Prog (BitVec 64) :=
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

def body94_60 : Prog (BitVec 64) :=
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

def body94_61 : Prog (BitVec 64) :=
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

def body94_62 : Prog (BitVec 64) :=
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

def body94_63 : Prog (BitVec 64) :=
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

def body94_64 : Prog (BitVec 64) :=
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

def body94_65 : Prog (BitVec 64) :=
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

def body94_66 : Prog (BitVec 64) :=
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

def body94_67 : Prog (BitVec 64) :=
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

def body94_68 : Prog (BitVec 64) :=
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

def body94_69 : Prog (BitVec 64) :=
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

def body94_70 : Prog (BitVec 64) :=
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

def body94_71 : Prog (BitVec 64) :=
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

def body94_72 : Prog (BitVec 64) :=
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

def body94_73 : Prog (BitVec 64) :=
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

def body94_74 : Prog (BitVec 64) :=
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

def body94_75 : Prog (BitVec 64) :=
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

def body94_76 : Prog (BitVec 64) :=
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

def body94_77 : Prog (BitVec 64) :=
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

def body94_78 : Prog (BitVec 64) :=
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

def body94_79 : Prog (BitVec 64) :=
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

def body94_80 : Prog (BitVec 64) :=
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

def body94_81 : Prog (BitVec 64) :=
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

def body94_82 : Prog (BitVec 64) :=
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

def body94_83 : Prog (BitVec 64) :=
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

def body94_84 : Prog (BitVec 64) :=
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

def body94_85 : Prog (BitVec 64) :=
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

def body94_86 : Prog (BitVec 64) :=
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

def body94_87 : Prog (BitVec 64) :=
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

def body94_88 : Prog (BitVec 64) :=
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

def body94_89 : Prog (BitVec 64) :=
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

def body94_90 : Prog (BitVec 64) :=
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

def body94_91 : Prog (BitVec 64) :=
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

def body94_92 : Prog (BitVec 64) :=
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

def body94_93 : Prog (BitVec 64) :=
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

def body94_94 : Prog (BitVec 64) :=
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

def body94_95 : Prog (BitVec 64) :=
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

def body94_96 : Prog (BitVec 64) :=
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

def body94_97 : Prog (BitVec 64) :=
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

def body94_98 : Prog (BitVec 64) :=
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

def body94_99 : Prog (BitVec 64) :=
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

def body94_100 : Prog (BitVec 64) :=
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

def body94_101 : Prog (BitVec 64) :=
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

def body94_102 : Prog (BitVec 64) :=
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

def body94_103 : Prog (BitVec 64) :=
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

def body94_104 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body94_105 : Prog (BitVec 64) :=
.seq body94_103 body94_104

def body94_106 : Prog (BitVec 64) :=
.seq body94_102 body94_105

def body94_107 : Prog (BitVec 64) :=
.seq body94_101 body94_106

def body94_108 : Prog (BitVec 64) :=
.seq body94_100 body94_107

def body94_109 : Prog (BitVec 64) :=
.seq body94_99 body94_108

def body94_110 : Prog (BitVec 64) :=
.seq body94_98 body94_109

def body94_111 : Prog (BitVec 64) :=
.seq body94_97 body94_110

def body94_112 : Prog (BitVec 64) :=
.seq body94_96 body94_111

def body94_113 : Prog (BitVec 64) :=
.seq body94_23 body94_112

def body94_114 : Prog (BitVec 64) :=
.seq body94_22 body94_113

def body94_115 : Prog (BitVec 64) :=
.seq body94_95 body94_114

def body94_116 : Prog (BitVec 64) :=
.seq body94_62 body94_115

def body94_117 : Prog (BitVec 64) :=
.seq body94_20 body94_116

def body94_118 : Prog (BitVec 64) :=
.seq body94_19 body94_117

def body94_119 : Prog (BitVec 64) :=
.seq body94_94 body94_118

def body94_120 : Prog (BitVec 64) :=
.seq body94_60 body94_119

def body94_121 : Prog (BitVec 64) :=
.seq body94_17 body94_120

def body94_122 : Prog (BitVec 64) :=
.seq body94_16 body94_121

def body94_123 : Prog (BitVec 64) :=
.seq body94_93 body94_122

def body94_124 : Prog (BitVec 64) :=
.seq body94_58 body94_123

def body94_125 : Prog (BitVec 64) :=
.seq body94_14 body94_124

def body94_126 : Prog (BitVec 64) :=
.seq body94_13 body94_125

def body94_127 : Prog (BitVec 64) :=
.seq body94_92 body94_126

def body94_128 : Prog (BitVec 64) :=
.seq body94_56 body94_127

def body94_129 : Prog (BitVec 64) :=
.seq body94_11 body94_128

def body94_130 : Prog (BitVec 64) :=
.seq body94_10 body94_129

def body94_131 : Prog (BitVec 64) :=
.seq body94_91 body94_130

def body94_132 : Prog (BitVec 64) :=
.seq body94_54 body94_131

def body94_133 : Prog (BitVec 64) :=
.seq body94_8 body94_132

def body94_134 : Prog (BitVec 64) :=
.seq body94_7 body94_133

def body94_135 : Prog (BitVec 64) :=
.seq body94_90 body94_134

def body94_136 : Prog (BitVec 64) :=
.seq body94_52 body94_135

def body94_137 : Prog (BitVec 64) :=
.seq body94_5 body94_136

def body94_138 : Prog (BitVec 64) :=
.seq body94_4 body94_137

def body94_139 : Prog (BitVec 64) :=
.seq body94_89 body94_138

def body94_140 : Prog (BitVec 64) :=
.seq body94_50 body94_139

def body94_141 : Prog (BitVec 64) :=
.seq body94_2 body94_140

def body94_142 : Prog (BitVec 64) :=
.seq body94_1 body94_141

def body94_143 : Prog (BitVec 64) :=
.seq body94_88 body94_142

def body94_144 : Prog (BitVec 64) :=
.seq body94_48 body94_143

def body94_145 : Prog (BitVec 64) :=
.seq body94_23 body94_144

def body94_146 : Prog (BitVec 64) :=
.seq body94_22 body94_145

def body94_147 : Prog (BitVec 64) :=
.seq body94_87 body94_146

def body94_148 : Prog (BitVec 64) :=
.seq body94_46 body94_147

def body94_149 : Prog (BitVec 64) :=
.seq body94_20 body94_148

def body94_150 : Prog (BitVec 64) :=
.seq body94_19 body94_149

def body94_151 : Prog (BitVec 64) :=
.seq body94_86 body94_150

def body94_152 : Prog (BitVec 64) :=
.seq body94_44 body94_151

def body94_153 : Prog (BitVec 64) :=
.seq body94_17 body94_152

def body94_154 : Prog (BitVec 64) :=
.seq body94_16 body94_153

def body94_155 : Prog (BitVec 64) :=
.seq body94_85 body94_154

def body94_156 : Prog (BitVec 64) :=
.seq body94_42 body94_155

def body94_157 : Prog (BitVec 64) :=
.seq body94_14 body94_156

def body94_158 : Prog (BitVec 64) :=
.seq body94_13 body94_157

def body94_159 : Prog (BitVec 64) :=
.seq body94_84 body94_158

def body94_160 : Prog (BitVec 64) :=
.seq body94_40 body94_159

def body94_161 : Prog (BitVec 64) :=
.seq body94_11 body94_160

def body94_162 : Prog (BitVec 64) :=
.seq body94_10 body94_161

def body94_163 : Prog (BitVec 64) :=
.seq body94_83 body94_162

def body94_164 : Prog (BitVec 64) :=
.seq body94_38 body94_163

def body94_165 : Prog (BitVec 64) :=
.seq body94_8 body94_164

def body94_166 : Prog (BitVec 64) :=
.seq body94_7 body94_165

def body94_167 : Prog (BitVec 64) :=
.seq body94_82 body94_166

def body94_168 : Prog (BitVec 64) :=
.seq body94_36 body94_167

def body94_169 : Prog (BitVec 64) :=
.seq body94_5 body94_168

def body94_170 : Prog (BitVec 64) :=
.seq body94_4 body94_169

def body94_171 : Prog (BitVec 64) :=
.seq body94_81 body94_170

def body94_172 : Prog (BitVec 64) :=
.seq body94_34 body94_171

def body94_173 : Prog (BitVec 64) :=
.seq body94_2 body94_172

def body94_174 : Prog (BitVec 64) :=
.seq body94_1 body94_173

def body94_175 : Prog (BitVec 64) :=
.seq body94_80 body94_174

def body94_176 : Prog (BitVec 64) :=
.seq body94_32 body94_175

def body94_177 : Prog (BitVec 64) :=
.seq body94_23 body94_176

def body94_178 : Prog (BitVec 64) :=
.seq body94_22 body94_177

def body94_179 : Prog (BitVec 64) :=
.seq body94_79 body94_178

def body94_180 : Prog (BitVec 64) :=
.seq body94_62 body94_179

def body94_181 : Prog (BitVec 64) :=
.seq body94_20 body94_180

def body94_182 : Prog (BitVec 64) :=
.seq body94_19 body94_181

def body94_183 : Prog (BitVec 64) :=
.seq body94_78 body94_182

def body94_184 : Prog (BitVec 64) :=
.seq body94_60 body94_183

def body94_185 : Prog (BitVec 64) :=
.seq body94_17 body94_184

def body94_186 : Prog (BitVec 64) :=
.seq body94_16 body94_185

def body94_187 : Prog (BitVec 64) :=
.seq body94_77 body94_186

def body94_188 : Prog (BitVec 64) :=
.seq body94_58 body94_187

def body94_189 : Prog (BitVec 64) :=
.seq body94_14 body94_188

def body94_190 : Prog (BitVec 64) :=
.seq body94_13 body94_189

def body94_191 : Prog (BitVec 64) :=
.seq body94_76 body94_190

def body94_192 : Prog (BitVec 64) :=
.seq body94_56 body94_191

def body94_193 : Prog (BitVec 64) :=
.seq body94_11 body94_192

def body94_194 : Prog (BitVec 64) :=
.seq body94_10 body94_193

def body94_195 : Prog (BitVec 64) :=
.seq body94_75 body94_194

def body94_196 : Prog (BitVec 64) :=
.seq body94_54 body94_195

def body94_197 : Prog (BitVec 64) :=
.seq body94_8 body94_196

def body94_198 : Prog (BitVec 64) :=
.seq body94_7 body94_197

def body94_199 : Prog (BitVec 64) :=
.seq body94_74 body94_198

def body94_200 : Prog (BitVec 64) :=
.seq body94_52 body94_199

def body94_201 : Prog (BitVec 64) :=
.seq body94_5 body94_200

def body94_202 : Prog (BitVec 64) :=
.seq body94_4 body94_201

def body94_203 : Prog (BitVec 64) :=
.seq body94_73 body94_202

def body94_204 : Prog (BitVec 64) :=
.seq body94_50 body94_203

def body94_205 : Prog (BitVec 64) :=
.seq body94_2 body94_204

def body94_206 : Prog (BitVec 64) :=
.seq body94_1 body94_205

def body94_207 : Prog (BitVec 64) :=
.seq body94_72 body94_206

def body94_208 : Prog (BitVec 64) :=
.seq body94_48 body94_207

def body94_209 : Prog (BitVec 64) :=
.seq body94_23 body94_208

def body94_210 : Prog (BitVec 64) :=
.seq body94_22 body94_209

def body94_211 : Prog (BitVec 64) :=
.seq body94_71 body94_210

def body94_212 : Prog (BitVec 64) :=
.seq body94_46 body94_211

def body94_213 : Prog (BitVec 64) :=
.seq body94_20 body94_212

def body94_214 : Prog (BitVec 64) :=
.seq body94_19 body94_213

def body94_215 : Prog (BitVec 64) :=
.seq body94_70 body94_214

def body94_216 : Prog (BitVec 64) :=
.seq body94_44 body94_215

def body94_217 : Prog (BitVec 64) :=
.seq body94_17 body94_216

def body94_218 : Prog (BitVec 64) :=
.seq body94_16 body94_217

def body94_219 : Prog (BitVec 64) :=
.seq body94_69 body94_218

def body94_220 : Prog (BitVec 64) :=
.seq body94_42 body94_219

def body94_221 : Prog (BitVec 64) :=
.seq body94_14 body94_220

def body94_222 : Prog (BitVec 64) :=
.seq body94_13 body94_221

def body94_223 : Prog (BitVec 64) :=
.seq body94_68 body94_222

def body94_224 : Prog (BitVec 64) :=
.seq body94_40 body94_223

def body94_225 : Prog (BitVec 64) :=
.seq body94_11 body94_224

def body94_226 : Prog (BitVec 64) :=
.seq body94_10 body94_225

def body94_227 : Prog (BitVec 64) :=
.seq body94_67 body94_226

def body94_228 : Prog (BitVec 64) :=
.seq body94_38 body94_227

def body94_229 : Prog (BitVec 64) :=
.seq body94_8 body94_228

def body94_230 : Prog (BitVec 64) :=
.seq body94_7 body94_229

def body94_231 : Prog (BitVec 64) :=
.seq body94_66 body94_230

def body94_232 : Prog (BitVec 64) :=
.seq body94_36 body94_231

def body94_233 : Prog (BitVec 64) :=
.seq body94_5 body94_232

def body94_234 : Prog (BitVec 64) :=
.seq body94_4 body94_233

def body94_235 : Prog (BitVec 64) :=
.seq body94_65 body94_234

def body94_236 : Prog (BitVec 64) :=
.seq body94_34 body94_235

def body94_237 : Prog (BitVec 64) :=
.seq body94_2 body94_236

def body94_238 : Prog (BitVec 64) :=
.seq body94_1 body94_237

def body94_239 : Prog (BitVec 64) :=
.seq body94_64 body94_238

def body94_240 : Prog (BitVec 64) :=
.seq body94_32 body94_239

def body94_241 : Prog (BitVec 64) :=
.seq body94_23 body94_240

def body94_242 : Prog (BitVec 64) :=
.seq body94_22 body94_241

def body94_243 : Prog (BitVec 64) :=
.seq body94_63 body94_242

def body94_244 : Prog (BitVec 64) :=
.seq body94_62 body94_243

def body94_245 : Prog (BitVec 64) :=
.seq body94_20 body94_244

def body94_246 : Prog (BitVec 64) :=
.seq body94_19 body94_245

def body94_247 : Prog (BitVec 64) :=
.seq body94_61 body94_246

def body94_248 : Prog (BitVec 64) :=
.seq body94_60 body94_247

def body94_249 : Prog (BitVec 64) :=
.seq body94_17 body94_248

def body94_250 : Prog (BitVec 64) :=
.seq body94_16 body94_249

def body94_251 : Prog (BitVec 64) :=
.seq body94_59 body94_250

def body94_252 : Prog (BitVec 64) :=
.seq body94_58 body94_251

def body94_253 : Prog (BitVec 64) :=
.seq body94_14 body94_252

def body94_254 : Prog (BitVec 64) :=
.seq body94_13 body94_253

def body94_255 : Prog (BitVec 64) :=
.seq body94_57 body94_254

def body94_256 : Prog (BitVec 64) :=
.seq body94_56 body94_255

def body94_257 : Prog (BitVec 64) :=
.seq body94_11 body94_256

def body94_258 : Prog (BitVec 64) :=
.seq body94_10 body94_257

def body94_259 : Prog (BitVec 64) :=
.seq body94_55 body94_258

def body94_260 : Prog (BitVec 64) :=
.seq body94_54 body94_259

def body94_261 : Prog (BitVec 64) :=
.seq body94_8 body94_260

def body94_262 : Prog (BitVec 64) :=
.seq body94_7 body94_261

def body94_263 : Prog (BitVec 64) :=
.seq body94_53 body94_262

def body94_264 : Prog (BitVec 64) :=
.seq body94_52 body94_263

def body94_265 : Prog (BitVec 64) :=
.seq body94_5 body94_264

def body94_266 : Prog (BitVec 64) :=
.seq body94_4 body94_265

def body94_267 : Prog (BitVec 64) :=
.seq body94_51 body94_266

def body94_268 : Prog (BitVec 64) :=
.seq body94_50 body94_267

def body94_269 : Prog (BitVec 64) :=
.seq body94_2 body94_268

def body94_270 : Prog (BitVec 64) :=
.seq body94_1 body94_269

def body94_271 : Prog (BitVec 64) :=
.seq body94_49 body94_270

def body94_272 : Prog (BitVec 64) :=
.seq body94_48 body94_271

def body94_273 : Prog (BitVec 64) :=
.seq body94_23 body94_272

def body94_274 : Prog (BitVec 64) :=
.seq body94_22 body94_273

def body94_275 : Prog (BitVec 64) :=
.seq body94_47 body94_274

def body94_276 : Prog (BitVec 64) :=
.seq body94_46 body94_275

def body94_277 : Prog (BitVec 64) :=
.seq body94_20 body94_276

def body94_278 : Prog (BitVec 64) :=
.seq body94_19 body94_277

def body94_279 : Prog (BitVec 64) :=
.seq body94_45 body94_278

def body94_280 : Prog (BitVec 64) :=
.seq body94_44 body94_279

def body94_281 : Prog (BitVec 64) :=
.seq body94_17 body94_280

def body94_282 : Prog (BitVec 64) :=
.seq body94_16 body94_281

def body94_283 : Prog (BitVec 64) :=
.seq body94_43 body94_282

def body94_284 : Prog (BitVec 64) :=
.seq body94_42 body94_283

def body94_285 : Prog (BitVec 64) :=
.seq body94_14 body94_284

def body94_286 : Prog (BitVec 64) :=
.seq body94_13 body94_285

def body94_287 : Prog (BitVec 64) :=
.seq body94_41 body94_286

def body94_288 : Prog (BitVec 64) :=
.seq body94_40 body94_287

def body94_289 : Prog (BitVec 64) :=
.seq body94_11 body94_288

def body94_290 : Prog (BitVec 64) :=
.seq body94_10 body94_289

def body94_291 : Prog (BitVec 64) :=
.seq body94_39 body94_290

def body94_292 : Prog (BitVec 64) :=
.seq body94_38 body94_291

def body94_293 : Prog (BitVec 64) :=
.seq body94_8 body94_292

def body94_294 : Prog (BitVec 64) :=
.seq body94_7 body94_293

def body94_295 : Prog (BitVec 64) :=
.seq body94_37 body94_294

def body94_296 : Prog (BitVec 64) :=
.seq body94_36 body94_295

def body94_297 : Prog (BitVec 64) :=
.seq body94_5 body94_296

def body94_298 : Prog (BitVec 64) :=
.seq body94_4 body94_297

def body94_299 : Prog (BitVec 64) :=
.seq body94_35 body94_298

def body94_300 : Prog (BitVec 64) :=
.seq body94_34 body94_299

def body94_301 : Prog (BitVec 64) :=
.seq body94_2 body94_300

def body94_302 : Prog (BitVec 64) :=
.seq body94_1 body94_301

def body94_303 : Prog (BitVec 64) :=
.seq body94_33 body94_302

def body94_304 : Prog (BitVec 64) :=
.seq body94_32 body94_303

def body94_305 : Prog (BitVec 64) :=
.seq body94_23 body94_304

def body94_306 : Prog (BitVec 64) :=
.seq body94_22 body94_305

def body94_307 : Prog (BitVec 64) :=
.seq body94_31 body94_306

def body94_308 : Prog (BitVec 64) :=
.seq body94_20 body94_307

def body94_309 : Prog (BitVec 64) :=
.seq body94_19 body94_308

def body94_310 : Prog (BitVec 64) :=
.seq body94_30 body94_309

def body94_311 : Prog (BitVec 64) :=
.seq body94_17 body94_310

def body94_312 : Prog (BitVec 64) :=
.seq body94_16 body94_311

def body94_313 : Prog (BitVec 64) :=
.seq body94_29 body94_312

def body94_314 : Prog (BitVec 64) :=
.seq body94_14 body94_313

def body94_315 : Prog (BitVec 64) :=
.seq body94_13 body94_314

def body94_316 : Prog (BitVec 64) :=
.seq body94_28 body94_315

def body94_317 : Prog (BitVec 64) :=
.seq body94_11 body94_316

def body94_318 : Prog (BitVec 64) :=
.seq body94_10 body94_317

def body94_319 : Prog (BitVec 64) :=
.seq body94_27 body94_318

def body94_320 : Prog (BitVec 64) :=
.seq body94_8 body94_319

def body94_321 : Prog (BitVec 64) :=
.seq body94_7 body94_320

def body94_322 : Prog (BitVec 64) :=
.seq body94_26 body94_321

def body94_323 : Prog (BitVec 64) :=
.seq body94_5 body94_322

def body94_324 : Prog (BitVec 64) :=
.seq body94_4 body94_323

def body94_325 : Prog (BitVec 64) :=
.seq body94_25 body94_324

def body94_326 : Prog (BitVec 64) :=
.seq body94_2 body94_325

def body94_327 : Prog (BitVec 64) :=
.seq body94_1 body94_326

def body94_328 : Prog (BitVec 64) :=
.seq body94_24 body94_327

def body94_329 : Prog (BitVec 64) :=
.seq body94_23 body94_328

def body94_330 : Prog (BitVec 64) :=
.seq body94_22 body94_329

def body94_331 : Prog (BitVec 64) :=
.seq body94_21 body94_330

def body94_332 : Prog (BitVec 64) :=
.seq body94_20 body94_331

def body94_333 : Prog (BitVec 64) :=
.seq body94_19 body94_332

def body94_334 : Prog (BitVec 64) :=
.seq body94_18 body94_333

def body94_335 : Prog (BitVec 64) :=
.seq body94_17 body94_334

def body94_336 : Prog (BitVec 64) :=
.seq body94_16 body94_335

def body94_337 : Prog (BitVec 64) :=
.seq body94_15 body94_336

def body94_338 : Prog (BitVec 64) :=
.seq body94_14 body94_337

def body94_339 : Prog (BitVec 64) :=
.seq body94_13 body94_338

def body94_340 : Prog (BitVec 64) :=
.seq body94_12 body94_339

def body94_341 : Prog (BitVec 64) :=
.seq body94_11 body94_340

def body94_342 : Prog (BitVec 64) :=
.seq body94_10 body94_341

def body94_343 : Prog (BitVec 64) :=
.seq body94_9 body94_342

def body94_344 : Prog (BitVec 64) :=
.seq body94_8 body94_343

def body94_345 : Prog (BitVec 64) :=
.seq body94_7 body94_344

def body94_346 : Prog (BitVec 64) :=
.seq body94_6 body94_345

def body94_347 : Prog (BitVec 64) :=
.seq body94_5 body94_346

def body94_348 : Prog (BitVec 64) :=
.seq body94_4 body94_347

def body94_349 : Prog (BitVec 64) :=
.seq body94_3 body94_348

def body94_350 : Prog (BitVec 64) :=
.seq body94_2 body94_349

def body94_351 : Prog (BitVec 64) :=
.seq body94_1 body94_350

def body94_352 : Prog (BitVec 64) :=
.seq body94_0 body94_351

def body94_353 : Prog (BitVec 64) :=
.dec ("t1") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body94_352

def body94_354 : Prog (BitVec 64) :=
.dec ("h") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 56#64])) body94_353

def body94_355 : Prog (BitVec 64) :=
.dec ("g") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 48#64])) body94_354

def body94_356 : Prog (BitVec 64) :=
.dec ("f") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 40#64])) body94_355

def body94_357 : Prog (BitVec 64) :=
.dec ("e") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 32#64])) body94_356

def body94_358 : Prog (BitVec 64) :=
.dec ("d") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 24#64])) body94_357

def body94_359 : Prog (BitVec 64) :=
.dec ("c") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 16#64])) body94_358

def body94_360 : Prog (BitVec 64) :=
.dec ("b") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 8#64])) body94_359

def body94_361 : Prog (BitVec 64) :=
.dec ("a") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 0#64])) body94_360

def body94_362 : Prog (BitVec 64) :=
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
        [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 60#64, Flapjack.Exp.const 3#64])]) body94_361

def body94_363 : Prog (BitVec 64) :=
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
        [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 56#64, Flapjack.Exp.const 3#64])]) body94_362

def body94_364 : Prog (BitVec 64) :=
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
        [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 52#64, Flapjack.Exp.const 3#64])]) body94_363

def body94_365 : Prog (BitVec 64) :=
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
        [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 48#64, Flapjack.Exp.const 3#64])]) body94_364

def body94_366 : Prog (BitVec 64) :=
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
        [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 44#64, Flapjack.Exp.const 3#64])]) body94_365

def body94_367 : Prog (BitVec 64) :=
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
        [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 40#64, Flapjack.Exp.const 3#64])]) body94_366

def body94_368 : Prog (BitVec 64) :=
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
        [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 36#64, Flapjack.Exp.const 3#64])]) body94_367

def body94_369 : Prog (BitVec 64) :=
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
        [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 32#64, Flapjack.Exp.const 3#64])]) body94_368

def body94_370 : Prog (BitVec 64) :=
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
        [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 28#64, Flapjack.Exp.const 3#64])]) body94_369

def body94_371 : Prog (BitVec 64) :=
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
        [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 24#64, Flapjack.Exp.const 3#64])]) body94_370

def body94_372 : Prog (BitVec 64) :=
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
        [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 20#64, Flapjack.Exp.const 3#64])]) body94_371

def body94_373 : Prog (BitVec 64) :=
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
        [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 16#64, Flapjack.Exp.const 3#64])]) body94_372

def body94_374 : Prog (BitVec 64) :=
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
        [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 12#64, Flapjack.Exp.const 3#64])]) body94_373

def body94_375 : Prog (BitVec 64) :=
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
        [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 8#64, Flapjack.Exp.const 3#64])]) body94_374

def body94_376 : Prog (BitVec 64) :=
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
        [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 4#64, Flapjack.Exp.const 3#64])]) body94_375

def body94_377 : Prog (BitVec 64) :=
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
        [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 0#64, Flapjack.Exp.const 3#64])]) body94_376

def body94_378 : Prog (BitVec 64) :=
.seq body94_0 body94_1

def body94_379 : Prog (BitVec 64) :=
.seq body94_378 body94_2

def body94_380 : Prog (BitVec 64) :=
.seq body94_379 body94_3

def body94_381 : Prog (BitVec 64) :=
.seq body94_380 body94_4

def body94_382 : Prog (BitVec 64) :=
.seq body94_381 body94_5

def body94_383 : Prog (BitVec 64) :=
.seq body94_382 body94_6

def body94_384 : Prog (BitVec 64) :=
.seq body94_383 body94_7

def body94_385 : Prog (BitVec 64) :=
.seq body94_384 body94_8

def body94_386 : Prog (BitVec 64) :=
.seq body94_385 body94_9

def body94_387 : Prog (BitVec 64) :=
.seq body94_386 body94_10

def body94_388 : Prog (BitVec 64) :=
.seq body94_387 body94_11

def body94_389 : Prog (BitVec 64) :=
.seq body94_388 body94_12

def body94_390 : Prog (BitVec 64) :=
.seq body94_389 body94_13

def body94_391 : Prog (BitVec 64) :=
.seq body94_390 body94_14

def body94_392 : Prog (BitVec 64) :=
.seq body94_391 body94_15

def body94_393 : Prog (BitVec 64) :=
.seq body94_392 body94_16

def body94_394 : Prog (BitVec 64) :=
.seq body94_393 body94_17

def body94_395 : Prog (BitVec 64) :=
.seq body94_394 body94_18

def body94_396 : Prog (BitVec 64) :=
.seq body94_395 body94_19

def body94_397 : Prog (BitVec 64) :=
.seq body94_396 body94_20

def body94_398 : Prog (BitVec 64) :=
.seq body94_397 body94_21

def body94_399 : Prog (BitVec 64) :=
.seq body94_398 body94_22

def body94_400 : Prog (BitVec 64) :=
.seq body94_399 body94_23

def body94_401 : Prog (BitVec 64) :=
.seq body94_400 body94_24

def body94_402 : Prog (BitVec 64) :=
.seq body94_401 body94_1

def body94_403 : Prog (BitVec 64) :=
.seq body94_402 body94_2

def body94_404 : Prog (BitVec 64) :=
.seq body94_403 body94_25

def body94_405 : Prog (BitVec 64) :=
.seq body94_404 body94_4

def body94_406 : Prog (BitVec 64) :=
.seq body94_405 body94_5

def body94_407 : Prog (BitVec 64) :=
.seq body94_406 body94_26

def body94_408 : Prog (BitVec 64) :=
.seq body94_407 body94_7

def body94_409 : Prog (BitVec 64) :=
.seq body94_408 body94_8

def body94_410 : Prog (BitVec 64) :=
.seq body94_409 body94_27

def body94_411 : Prog (BitVec 64) :=
.seq body94_410 body94_10

def body94_412 : Prog (BitVec 64) :=
.seq body94_411 body94_11

def body94_413 : Prog (BitVec 64) :=
.seq body94_412 body94_28

def body94_414 : Prog (BitVec 64) :=
.seq body94_413 body94_13

def body94_415 : Prog (BitVec 64) :=
.seq body94_414 body94_14

def body94_416 : Prog (BitVec 64) :=
.seq body94_415 body94_29

def body94_417 : Prog (BitVec 64) :=
.seq body94_416 body94_16

def body94_418 : Prog (BitVec 64) :=
.seq body94_417 body94_17

def body94_419 : Prog (BitVec 64) :=
.seq body94_418 body94_30

def body94_420 : Prog (BitVec 64) :=
.seq body94_419 body94_19

def body94_421 : Prog (BitVec 64) :=
.seq body94_420 body94_20

def body94_422 : Prog (BitVec 64) :=
.seq body94_421 body94_31

def body94_423 : Prog (BitVec 64) :=
.seq body94_422 body94_22

def body94_424 : Prog (BitVec 64) :=
.seq body94_423 body94_23

def body94_425 : Prog (BitVec 64) :=
.seq body94_424 body94_32

def body94_426 : Prog (BitVec 64) :=
.seq body94_425 body94_33

def body94_427 : Prog (BitVec 64) :=
.seq body94_426 body94_1

def body94_428 : Prog (BitVec 64) :=
.seq body94_427 body94_2

def body94_429 : Prog (BitVec 64) :=
.seq body94_428 body94_34

def body94_430 : Prog (BitVec 64) :=
.seq body94_429 body94_35

def body94_431 : Prog (BitVec 64) :=
.seq body94_430 body94_4

def body94_432 : Prog (BitVec 64) :=
.seq body94_431 body94_5

def body94_433 : Prog (BitVec 64) :=
.seq body94_432 body94_36

def body94_434 : Prog (BitVec 64) :=
.seq body94_433 body94_37

def body94_435 : Prog (BitVec 64) :=
.seq body94_434 body94_7

def body94_436 : Prog (BitVec 64) :=
.seq body94_435 body94_8

def body94_437 : Prog (BitVec 64) :=
.seq body94_436 body94_38

def body94_438 : Prog (BitVec 64) :=
.seq body94_437 body94_39

def body94_439 : Prog (BitVec 64) :=
.seq body94_438 body94_10

def body94_440 : Prog (BitVec 64) :=
.seq body94_439 body94_11

def body94_441 : Prog (BitVec 64) :=
.seq body94_440 body94_40

def body94_442 : Prog (BitVec 64) :=
.seq body94_441 body94_41

def body94_443 : Prog (BitVec 64) :=
.seq body94_442 body94_13

def body94_444 : Prog (BitVec 64) :=
.seq body94_443 body94_14

def body94_445 : Prog (BitVec 64) :=
.seq body94_444 body94_42

def body94_446 : Prog (BitVec 64) :=
.seq body94_445 body94_43

def body94_447 : Prog (BitVec 64) :=
.seq body94_446 body94_16

def body94_448 : Prog (BitVec 64) :=
.seq body94_447 body94_17

def body94_449 : Prog (BitVec 64) :=
.seq body94_448 body94_44

def body94_450 : Prog (BitVec 64) :=
.seq body94_449 body94_45

def body94_451 : Prog (BitVec 64) :=
.seq body94_450 body94_19

def body94_452 : Prog (BitVec 64) :=
.seq body94_451 body94_20

def body94_453 : Prog (BitVec 64) :=
.seq body94_452 body94_46

def body94_454 : Prog (BitVec 64) :=
.seq body94_453 body94_47

def body94_455 : Prog (BitVec 64) :=
.seq body94_454 body94_22

def body94_456 : Prog (BitVec 64) :=
.seq body94_455 body94_23

def body94_457 : Prog (BitVec 64) :=
.seq body94_456 body94_48

def body94_458 : Prog (BitVec 64) :=
.seq body94_457 body94_49

def body94_459 : Prog (BitVec 64) :=
.seq body94_458 body94_1

def body94_460 : Prog (BitVec 64) :=
.seq body94_459 body94_2

def body94_461 : Prog (BitVec 64) :=
.seq body94_460 body94_50

def body94_462 : Prog (BitVec 64) :=
.seq body94_461 body94_51

def body94_463 : Prog (BitVec 64) :=
.seq body94_462 body94_4

def body94_464 : Prog (BitVec 64) :=
.seq body94_463 body94_5

def body94_465 : Prog (BitVec 64) :=
.seq body94_464 body94_52

def body94_466 : Prog (BitVec 64) :=
.seq body94_465 body94_53

def body94_467 : Prog (BitVec 64) :=
.seq body94_466 body94_7

def body94_468 : Prog (BitVec 64) :=
.seq body94_467 body94_8

def body94_469 : Prog (BitVec 64) :=
.seq body94_468 body94_54

def body94_470 : Prog (BitVec 64) :=
.seq body94_469 body94_55

def body94_471 : Prog (BitVec 64) :=
.seq body94_470 body94_10

def body94_472 : Prog (BitVec 64) :=
.seq body94_471 body94_11

def body94_473 : Prog (BitVec 64) :=
.seq body94_472 body94_56

def body94_474 : Prog (BitVec 64) :=
.seq body94_473 body94_57

def body94_475 : Prog (BitVec 64) :=
.seq body94_474 body94_13

def body94_476 : Prog (BitVec 64) :=
.seq body94_475 body94_14

def body94_477 : Prog (BitVec 64) :=
.seq body94_476 body94_58

def body94_478 : Prog (BitVec 64) :=
.seq body94_477 body94_59

def body94_479 : Prog (BitVec 64) :=
.seq body94_478 body94_16

def body94_480 : Prog (BitVec 64) :=
.seq body94_479 body94_17

def body94_481 : Prog (BitVec 64) :=
.seq body94_480 body94_60

def body94_482 : Prog (BitVec 64) :=
.seq body94_481 body94_61

def body94_483 : Prog (BitVec 64) :=
.seq body94_482 body94_19

def body94_484 : Prog (BitVec 64) :=
.seq body94_483 body94_20

def body94_485 : Prog (BitVec 64) :=
.seq body94_484 body94_62

def body94_486 : Prog (BitVec 64) :=
.seq body94_485 body94_63

def body94_487 : Prog (BitVec 64) :=
.seq body94_486 body94_22

def body94_488 : Prog (BitVec 64) :=
.seq body94_487 body94_23

def body94_489 : Prog (BitVec 64) :=
.seq body94_488 body94_32

def body94_490 : Prog (BitVec 64) :=
.seq body94_489 body94_64

def body94_491 : Prog (BitVec 64) :=
.seq body94_490 body94_1

def body94_492 : Prog (BitVec 64) :=
.seq body94_491 body94_2

def body94_493 : Prog (BitVec 64) :=
.seq body94_492 body94_34

def body94_494 : Prog (BitVec 64) :=
.seq body94_493 body94_65

def body94_495 : Prog (BitVec 64) :=
.seq body94_494 body94_4

def body94_496 : Prog (BitVec 64) :=
.seq body94_495 body94_5

def body94_497 : Prog (BitVec 64) :=
.seq body94_496 body94_36

def body94_498 : Prog (BitVec 64) :=
.seq body94_497 body94_66

def body94_499 : Prog (BitVec 64) :=
.seq body94_498 body94_7

def body94_500 : Prog (BitVec 64) :=
.seq body94_499 body94_8

def body94_501 : Prog (BitVec 64) :=
.seq body94_500 body94_38

def body94_502 : Prog (BitVec 64) :=
.seq body94_501 body94_67

def body94_503 : Prog (BitVec 64) :=
.seq body94_502 body94_10

def body94_504 : Prog (BitVec 64) :=
.seq body94_503 body94_11

def body94_505 : Prog (BitVec 64) :=
.seq body94_504 body94_40

def body94_506 : Prog (BitVec 64) :=
.seq body94_505 body94_68

def body94_507 : Prog (BitVec 64) :=
.seq body94_506 body94_13

def body94_508 : Prog (BitVec 64) :=
.seq body94_507 body94_14

def body94_509 : Prog (BitVec 64) :=
.seq body94_508 body94_42

def body94_510 : Prog (BitVec 64) :=
.seq body94_509 body94_69

def body94_511 : Prog (BitVec 64) :=
.seq body94_510 body94_16

def body94_512 : Prog (BitVec 64) :=
.seq body94_511 body94_17

def body94_513 : Prog (BitVec 64) :=
.seq body94_512 body94_44

def body94_514 : Prog (BitVec 64) :=
.seq body94_513 body94_70

def body94_515 : Prog (BitVec 64) :=
.seq body94_514 body94_19

def body94_516 : Prog (BitVec 64) :=
.seq body94_515 body94_20

def body94_517 : Prog (BitVec 64) :=
.seq body94_516 body94_46

def body94_518 : Prog (BitVec 64) :=
.seq body94_517 body94_71

def body94_519 : Prog (BitVec 64) :=
.seq body94_518 body94_22

def body94_520 : Prog (BitVec 64) :=
.seq body94_519 body94_23

def body94_521 : Prog (BitVec 64) :=
.seq body94_520 body94_48

def body94_522 : Prog (BitVec 64) :=
.seq body94_521 body94_72

def body94_523 : Prog (BitVec 64) :=
.seq body94_522 body94_1

def body94_524 : Prog (BitVec 64) :=
.seq body94_523 body94_2

def body94_525 : Prog (BitVec 64) :=
.seq body94_524 body94_50

def body94_526 : Prog (BitVec 64) :=
.seq body94_525 body94_73

def body94_527 : Prog (BitVec 64) :=
.seq body94_526 body94_4

def body94_528 : Prog (BitVec 64) :=
.seq body94_527 body94_5

def body94_529 : Prog (BitVec 64) :=
.seq body94_528 body94_52

def body94_530 : Prog (BitVec 64) :=
.seq body94_529 body94_74

def body94_531 : Prog (BitVec 64) :=
.seq body94_530 body94_7

def body94_532 : Prog (BitVec 64) :=
.seq body94_531 body94_8

def body94_533 : Prog (BitVec 64) :=
.seq body94_532 body94_54

def body94_534 : Prog (BitVec 64) :=
.seq body94_533 body94_75

def body94_535 : Prog (BitVec 64) :=
.seq body94_534 body94_10

def body94_536 : Prog (BitVec 64) :=
.seq body94_535 body94_11

def body94_537 : Prog (BitVec 64) :=
.seq body94_536 body94_56

def body94_538 : Prog (BitVec 64) :=
.seq body94_537 body94_76

def body94_539 : Prog (BitVec 64) :=
.seq body94_538 body94_13

def body94_540 : Prog (BitVec 64) :=
.seq body94_539 body94_14

def body94_541 : Prog (BitVec 64) :=
.seq body94_540 body94_58

def body94_542 : Prog (BitVec 64) :=
.seq body94_541 body94_77

def body94_543 : Prog (BitVec 64) :=
.seq body94_542 body94_16

def body94_544 : Prog (BitVec 64) :=
.seq body94_543 body94_17

def body94_545 : Prog (BitVec 64) :=
.seq body94_544 body94_60

def body94_546 : Prog (BitVec 64) :=
.seq body94_545 body94_78

def body94_547 : Prog (BitVec 64) :=
.seq body94_546 body94_19

def body94_548 : Prog (BitVec 64) :=
.seq body94_547 body94_20

def body94_549 : Prog (BitVec 64) :=
.seq body94_548 body94_62

def body94_550 : Prog (BitVec 64) :=
.seq body94_549 body94_79

def body94_551 : Prog (BitVec 64) :=
.seq body94_550 body94_22

def body94_552 : Prog (BitVec 64) :=
.seq body94_551 body94_23

def body94_553 : Prog (BitVec 64) :=
.seq body94_552 body94_32

def body94_554 : Prog (BitVec 64) :=
.seq body94_553 body94_80

def body94_555 : Prog (BitVec 64) :=
.seq body94_554 body94_1

def body94_556 : Prog (BitVec 64) :=
.seq body94_555 body94_2

def body94_557 : Prog (BitVec 64) :=
.seq body94_556 body94_34

def body94_558 : Prog (BitVec 64) :=
.seq body94_557 body94_81

def body94_559 : Prog (BitVec 64) :=
.seq body94_558 body94_4

def body94_560 : Prog (BitVec 64) :=
.seq body94_559 body94_5

def body94_561 : Prog (BitVec 64) :=
.seq body94_560 body94_36

def body94_562 : Prog (BitVec 64) :=
.seq body94_561 body94_82

def body94_563 : Prog (BitVec 64) :=
.seq body94_562 body94_7

def body94_564 : Prog (BitVec 64) :=
.seq body94_563 body94_8

def body94_565 : Prog (BitVec 64) :=
.seq body94_564 body94_38

def body94_566 : Prog (BitVec 64) :=
.seq body94_565 body94_83

def body94_567 : Prog (BitVec 64) :=
.seq body94_566 body94_10

def body94_568 : Prog (BitVec 64) :=
.seq body94_567 body94_11

def body94_569 : Prog (BitVec 64) :=
.seq body94_568 body94_40

def body94_570 : Prog (BitVec 64) :=
.seq body94_569 body94_84

def body94_571 : Prog (BitVec 64) :=
.seq body94_570 body94_13

def body94_572 : Prog (BitVec 64) :=
.seq body94_571 body94_14

def body94_573 : Prog (BitVec 64) :=
.seq body94_572 body94_42

def body94_574 : Prog (BitVec 64) :=
.seq body94_573 body94_85

def body94_575 : Prog (BitVec 64) :=
.seq body94_574 body94_16

def body94_576 : Prog (BitVec 64) :=
.seq body94_575 body94_17

def body94_577 : Prog (BitVec 64) :=
.seq body94_576 body94_44

def body94_578 : Prog (BitVec 64) :=
.seq body94_577 body94_86

def body94_579 : Prog (BitVec 64) :=
.seq body94_578 body94_19

def body94_580 : Prog (BitVec 64) :=
.seq body94_579 body94_20

def body94_581 : Prog (BitVec 64) :=
.seq body94_580 body94_46

def body94_582 : Prog (BitVec 64) :=
.seq body94_581 body94_87

def body94_583 : Prog (BitVec 64) :=
.seq body94_582 body94_22

def body94_584 : Prog (BitVec 64) :=
.seq body94_583 body94_23

def body94_585 : Prog (BitVec 64) :=
.seq body94_584 body94_48

def body94_586 : Prog (BitVec 64) :=
.seq body94_585 body94_88

def body94_587 : Prog (BitVec 64) :=
.seq body94_586 body94_1

def body94_588 : Prog (BitVec 64) :=
.seq body94_587 body94_2

def body94_589 : Prog (BitVec 64) :=
.seq body94_588 body94_50

def body94_590 : Prog (BitVec 64) :=
.seq body94_589 body94_89

def body94_591 : Prog (BitVec 64) :=
.seq body94_590 body94_4

def body94_592 : Prog (BitVec 64) :=
.seq body94_591 body94_5

def body94_593 : Prog (BitVec 64) :=
.seq body94_592 body94_52

def body94_594 : Prog (BitVec 64) :=
.seq body94_593 body94_90

def body94_595 : Prog (BitVec 64) :=
.seq body94_594 body94_7

def body94_596 : Prog (BitVec 64) :=
.seq body94_595 body94_8

def body94_597 : Prog (BitVec 64) :=
.seq body94_596 body94_54

def body94_598 : Prog (BitVec 64) :=
.seq body94_597 body94_91

def body94_599 : Prog (BitVec 64) :=
.seq body94_598 body94_10

def body94_600 : Prog (BitVec 64) :=
.seq body94_599 body94_11

def body94_601 : Prog (BitVec 64) :=
.seq body94_600 body94_56

def body94_602 : Prog (BitVec 64) :=
.seq body94_601 body94_92

def body94_603 : Prog (BitVec 64) :=
.seq body94_602 body94_13

def body94_604 : Prog (BitVec 64) :=
.seq body94_603 body94_14

def body94_605 : Prog (BitVec 64) :=
.seq body94_604 body94_58

def body94_606 : Prog (BitVec 64) :=
.seq body94_605 body94_93

def body94_607 : Prog (BitVec 64) :=
.seq body94_606 body94_16

def body94_608 : Prog (BitVec 64) :=
.seq body94_607 body94_17

def body94_609 : Prog (BitVec 64) :=
.seq body94_608 body94_60

def body94_610 : Prog (BitVec 64) :=
.seq body94_609 body94_94

def body94_611 : Prog (BitVec 64) :=
.seq body94_610 body94_19

def body94_612 : Prog (BitVec 64) :=
.seq body94_611 body94_20

def body94_613 : Prog (BitVec 64) :=
.seq body94_612 body94_62

def body94_614 : Prog (BitVec 64) :=
.seq body94_613 body94_95

def body94_615 : Prog (BitVec 64) :=
.seq body94_614 body94_22

def body94_616 : Prog (BitVec 64) :=
.seq body94_615 body94_23

def body94_617 : Prog (BitVec 64) :=
.seq body94_616 body94_96

def body94_618 : Prog (BitVec 64) :=
.seq body94_617 body94_97

def body94_619 : Prog (BitVec 64) :=
.seq body94_618 body94_98

def body94_620 : Prog (BitVec 64) :=
.seq body94_619 body94_99

def body94_621 : Prog (BitVec 64) :=
.seq body94_620 body94_100

def body94_622 : Prog (BitVec 64) :=
.seq body94_621 body94_101

def body94_623 : Prog (BitVec 64) :=
.seq body94_622 body94_102

def body94_624 : Prog (BitVec 64) :=
.seq body94_623 body94_103

def body94_625 : Prog (BitVec 64) :=
.seq body94_624 body94_104

def body94_626 : Prog (BitVec 64) :=
.dec ("t1") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body94_625

def body94_627 : Prog (BitVec 64) :=
.dec ("h") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 56#64])) body94_626

def body94_628 : Prog (BitVec 64) :=
.dec ("g") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 48#64])) body94_627

def body94_629 : Prog (BitVec 64) :=
.dec ("f") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 40#64])) body94_628

def body94_630 : Prog (BitVec 64) :=
.dec ("e") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 32#64])) body94_629

def body94_631 : Prog (BitVec 64) :=
.dec ("d") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 24#64])) body94_630

def body94_632 : Prog (BitVec 64) :=
.dec ("c") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 16#64])) body94_631

def body94_633 : Prog (BitVec 64) :=
.dec ("b") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 8#64])) body94_632

def body94_634 : Prog (BitVec 64) :=
.dec ("a") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 0#64])) body94_633

def body94_635 : Prog (BitVec 64) :=
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
        [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 60#64, Flapjack.Exp.const 3#64])]) body94_634

def body94_636 : Prog (BitVec 64) :=
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
        [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 56#64, Flapjack.Exp.const 3#64])]) body94_635

def body94_637 : Prog (BitVec 64) :=
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
        [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 52#64, Flapjack.Exp.const 3#64])]) body94_636

def body94_638 : Prog (BitVec 64) :=
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
        [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 48#64, Flapjack.Exp.const 3#64])]) body94_637

def body94_639 : Prog (BitVec 64) :=
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
        [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 44#64, Flapjack.Exp.const 3#64])]) body94_638

def body94_640 : Prog (BitVec 64) :=
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
        [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 40#64, Flapjack.Exp.const 3#64])]) body94_639

def body94_641 : Prog (BitVec 64) :=
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
        [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 36#64, Flapjack.Exp.const 3#64])]) body94_640

def body94_642 : Prog (BitVec 64) :=
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
        [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 32#64, Flapjack.Exp.const 3#64])]) body94_641

def body94_643 : Prog (BitVec 64) :=
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
        [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 28#64, Flapjack.Exp.const 3#64])]) body94_642

def body94_644 : Prog (BitVec 64) :=
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
        [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 24#64, Flapjack.Exp.const 3#64])]) body94_643

def body94_645 : Prog (BitVec 64) :=
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
        [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 20#64, Flapjack.Exp.const 3#64])]) body94_644

def body94_646 : Prog (BitVec 64) :=
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
        [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 16#64, Flapjack.Exp.const 3#64])]) body94_645

def body94_647 : Prog (BitVec 64) :=
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
        [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 12#64, Flapjack.Exp.const 3#64])]) body94_646

def body94_648 : Prog (BitVec 64) :=
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
        [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 8#64, Flapjack.Exp.const 3#64])]) body94_647

def body94_649 : Prog (BitVec 64) :=
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
        [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 4#64, Flapjack.Exp.const 3#64])]) body94_648

def body94_650 : Prog (BitVec 64) :=
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
        [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 0#64, Flapjack.Exp.const 3#64])]) body94_649

def originalData94 : Decl (BitVec 64) :=
.function { name := "sha256_block", inline := false, exported := false, params := [("stp", Flapjack.Shape.one), ("blk", Flapjack.Shape.one)], body := body94_377, returnShape := (Flapjack.Shape.one) }
def simplifiedData94 : Decl (BitVec 64) :=
.function { name := "sha256_block", inline := false, exported := false, params := [("stp", Flapjack.Shape.one), ("blk", Flapjack.Shape.one)], body := body94_650, returnShape := (Flapjack.Shape.one) }
def original94 := Pancake.PanLang.declToHOL originalData94
def simplified94 := Pancake.PanLang.declToHOL simplifiedData94
end InitECandidate.Proofs.FrontendStages.Declarations
