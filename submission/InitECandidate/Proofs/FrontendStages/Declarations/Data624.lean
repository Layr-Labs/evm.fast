import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify608
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body624_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.global "b2_v", Flapjack.Exp.var Flapjack.VarKind.local "h",
    Flapjack.Exp.const 64#64]

def body624_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "b2_v", Flapjack.Exp.const 64#64],
    Flapjack.Exp.var Flapjack.VarKind.global "b2_iv", Flapjack.Exp.const 64#64]

def body624_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "b2_v", Flapjack.Exp.const 96#64])
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.global "b2_v",
            Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 12#64, Flapjack.Exp.const 8#64]]),
      Flapjack.Exp.var Flapjack.VarKind.local "t0"])

def body624_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "b2_v", Flapjack.Exp.const 104#64])
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.global "b2_v",
            Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 13#64, Flapjack.Exp.const 8#64]]),
      Flapjack.Exp.var Flapjack.VarKind.local "t1"])

def body624_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "b2_v", Flapjack.Exp.const 112#64])
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.global "b2_v",
            Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 14#64, Flapjack.Exp.const 8#64]]),
      Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 0#64, Flapjack.Exp.const 1#64]])

def body624_5 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body624_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "f") (Flapjack.Exp.const 0#64)) body624_4 body624_5

def body624_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "blake2_g"
  [Flapjack.Exp.const 0#64, Flapjack.Exp.const 4#64, Flapjack.Exp.const 8#64, Flapjack.Exp.const 12#64,
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "m",
          Flapjack.Exp.panOp Flapjack.PanOp.mul
            [Flapjack.Exp.op Flapjack.BinOp.and
                [Flapjack.Exp.shift Flapjack.Shift.lsr
                    (Flapjack.Exp.load Flapjack.Shape.one
                      (Flapjack.Exp.op Flapjack.BinOp.add
                        [Flapjack.Exp.var Flapjack.VarKind.global "b2_sigma",
                          Flapjack.Exp.panOp Flapjack.PanOp.mul
                            [Flapjack.Exp.var Flapjack.VarKind.local "row", Flapjack.Exp.const 8#64]]))
                    (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 0#64, Flapjack.Exp.const 4#64]),
                  Flapjack.Exp.const 15#64],
              Flapjack.Exp.const 8#64]]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "m",
          Flapjack.Exp.panOp Flapjack.PanOp.mul
            [Flapjack.Exp.op Flapjack.BinOp.and
                [Flapjack.Exp.shift Flapjack.Shift.lsr
                    (Flapjack.Exp.load Flapjack.Shape.one
                      (Flapjack.Exp.op Flapjack.BinOp.add
                        [Flapjack.Exp.var Flapjack.VarKind.global "b2_sigma",
                          Flapjack.Exp.panOp Flapjack.PanOp.mul
                            [Flapjack.Exp.var Flapjack.VarKind.local "row", Flapjack.Exp.const 8#64]]))
                    (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 1#64, Flapjack.Exp.const 4#64]),
                  Flapjack.Exp.const 15#64],
              Flapjack.Exp.const 8#64]])]

def body624_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "blake2_g"
  [Flapjack.Exp.const 1#64, Flapjack.Exp.const 5#64, Flapjack.Exp.const 9#64, Flapjack.Exp.const 13#64,
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "m",
          Flapjack.Exp.panOp Flapjack.PanOp.mul
            [Flapjack.Exp.op Flapjack.BinOp.and
                [Flapjack.Exp.shift Flapjack.Shift.lsr
                    (Flapjack.Exp.load Flapjack.Shape.one
                      (Flapjack.Exp.op Flapjack.BinOp.add
                        [Flapjack.Exp.var Flapjack.VarKind.global "b2_sigma",
                          Flapjack.Exp.panOp Flapjack.PanOp.mul
                            [Flapjack.Exp.var Flapjack.VarKind.local "row", Flapjack.Exp.const 8#64]]))
                    (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.const 4#64]),
                  Flapjack.Exp.const 15#64],
              Flapjack.Exp.const 8#64]]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "m",
          Flapjack.Exp.panOp Flapjack.PanOp.mul
            [Flapjack.Exp.op Flapjack.BinOp.and
                [Flapjack.Exp.shift Flapjack.Shift.lsr
                    (Flapjack.Exp.load Flapjack.Shape.one
                      (Flapjack.Exp.op Flapjack.BinOp.add
                        [Flapjack.Exp.var Flapjack.VarKind.global "b2_sigma",
                          Flapjack.Exp.panOp Flapjack.PanOp.mul
                            [Flapjack.Exp.var Flapjack.VarKind.local "row", Flapjack.Exp.const 8#64]]))
                    (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 3#64, Flapjack.Exp.const 4#64]),
                  Flapjack.Exp.const 15#64],
              Flapjack.Exp.const 8#64]])]

def body624_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "blake2_g"
  [Flapjack.Exp.const 2#64, Flapjack.Exp.const 6#64, Flapjack.Exp.const 10#64, Flapjack.Exp.const 14#64,
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "m",
          Flapjack.Exp.panOp Flapjack.PanOp.mul
            [Flapjack.Exp.op Flapjack.BinOp.and
                [Flapjack.Exp.shift Flapjack.Shift.lsr
                    (Flapjack.Exp.load Flapjack.Shape.one
                      (Flapjack.Exp.op Flapjack.BinOp.add
                        [Flapjack.Exp.var Flapjack.VarKind.global "b2_sigma",
                          Flapjack.Exp.panOp Flapjack.PanOp.mul
                            [Flapjack.Exp.var Flapjack.VarKind.local "row", Flapjack.Exp.const 8#64]]))
                    (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 4#64, Flapjack.Exp.const 4#64]),
                  Flapjack.Exp.const 15#64],
              Flapjack.Exp.const 8#64]]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "m",
          Flapjack.Exp.panOp Flapjack.PanOp.mul
            [Flapjack.Exp.op Flapjack.BinOp.and
                [Flapjack.Exp.shift Flapjack.Shift.lsr
                    (Flapjack.Exp.load Flapjack.Shape.one
                      (Flapjack.Exp.op Flapjack.BinOp.add
                        [Flapjack.Exp.var Flapjack.VarKind.global "b2_sigma",
                          Flapjack.Exp.panOp Flapjack.PanOp.mul
                            [Flapjack.Exp.var Flapjack.VarKind.local "row", Flapjack.Exp.const 8#64]]))
                    (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 5#64, Flapjack.Exp.const 4#64]),
                  Flapjack.Exp.const 15#64],
              Flapjack.Exp.const 8#64]])]

def body624_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "blake2_g"
  [Flapjack.Exp.const 3#64, Flapjack.Exp.const 7#64, Flapjack.Exp.const 11#64, Flapjack.Exp.const 15#64,
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "m",
          Flapjack.Exp.panOp Flapjack.PanOp.mul
            [Flapjack.Exp.op Flapjack.BinOp.and
                [Flapjack.Exp.shift Flapjack.Shift.lsr
                    (Flapjack.Exp.load Flapjack.Shape.one
                      (Flapjack.Exp.op Flapjack.BinOp.add
                        [Flapjack.Exp.var Flapjack.VarKind.global "b2_sigma",
                          Flapjack.Exp.panOp Flapjack.PanOp.mul
                            [Flapjack.Exp.var Flapjack.VarKind.local "row", Flapjack.Exp.const 8#64]]))
                    (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 6#64, Flapjack.Exp.const 4#64]),
                  Flapjack.Exp.const 15#64],
              Flapjack.Exp.const 8#64]]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "m",
          Flapjack.Exp.panOp Flapjack.PanOp.mul
            [Flapjack.Exp.op Flapjack.BinOp.and
                [Flapjack.Exp.shift Flapjack.Shift.lsr
                    (Flapjack.Exp.load Flapjack.Shape.one
                      (Flapjack.Exp.op Flapjack.BinOp.add
                        [Flapjack.Exp.var Flapjack.VarKind.global "b2_sigma",
                          Flapjack.Exp.panOp Flapjack.PanOp.mul
                            [Flapjack.Exp.var Flapjack.VarKind.local "row", Flapjack.Exp.const 8#64]]))
                    (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 7#64, Flapjack.Exp.const 4#64]),
                  Flapjack.Exp.const 15#64],
              Flapjack.Exp.const 8#64]])]

def body624_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "blake2_g"
  [Flapjack.Exp.const 0#64, Flapjack.Exp.const 5#64, Flapjack.Exp.const 10#64, Flapjack.Exp.const 15#64,
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "m",
          Flapjack.Exp.panOp Flapjack.PanOp.mul
            [Flapjack.Exp.op Flapjack.BinOp.and
                [Flapjack.Exp.shift Flapjack.Shift.lsr
                    (Flapjack.Exp.load Flapjack.Shape.one
                      (Flapjack.Exp.op Flapjack.BinOp.add
                        [Flapjack.Exp.var Flapjack.VarKind.global "b2_sigma",
                          Flapjack.Exp.panOp Flapjack.PanOp.mul
                            [Flapjack.Exp.var Flapjack.VarKind.local "row", Flapjack.Exp.const 8#64]]))
                    (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 8#64, Flapjack.Exp.const 4#64]),
                  Flapjack.Exp.const 15#64],
              Flapjack.Exp.const 8#64]]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "m",
          Flapjack.Exp.panOp Flapjack.PanOp.mul
            [Flapjack.Exp.op Flapjack.BinOp.and
                [Flapjack.Exp.shift Flapjack.Shift.lsr
                    (Flapjack.Exp.load Flapjack.Shape.one
                      (Flapjack.Exp.op Flapjack.BinOp.add
                        [Flapjack.Exp.var Flapjack.VarKind.global "b2_sigma",
                          Flapjack.Exp.panOp Flapjack.PanOp.mul
                            [Flapjack.Exp.var Flapjack.VarKind.local "row", Flapjack.Exp.const 8#64]]))
                    (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 9#64, Flapjack.Exp.const 4#64]),
                  Flapjack.Exp.const 15#64],
              Flapjack.Exp.const 8#64]])]

def body624_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "blake2_g"
  [Flapjack.Exp.const 1#64, Flapjack.Exp.const 6#64, Flapjack.Exp.const 11#64, Flapjack.Exp.const 12#64,
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "m",
          Flapjack.Exp.panOp Flapjack.PanOp.mul
            [Flapjack.Exp.op Flapjack.BinOp.and
                [Flapjack.Exp.shift Flapjack.Shift.lsr
                    (Flapjack.Exp.load Flapjack.Shape.one
                      (Flapjack.Exp.op Flapjack.BinOp.add
                        [Flapjack.Exp.var Flapjack.VarKind.global "b2_sigma",
                          Flapjack.Exp.panOp Flapjack.PanOp.mul
                            [Flapjack.Exp.var Flapjack.VarKind.local "row", Flapjack.Exp.const 8#64]]))
                    (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 10#64, Flapjack.Exp.const 4#64]),
                  Flapjack.Exp.const 15#64],
              Flapjack.Exp.const 8#64]]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "m",
          Flapjack.Exp.panOp Flapjack.PanOp.mul
            [Flapjack.Exp.op Flapjack.BinOp.and
                [Flapjack.Exp.shift Flapjack.Shift.lsr
                    (Flapjack.Exp.load Flapjack.Shape.one
                      (Flapjack.Exp.op Flapjack.BinOp.add
                        [Flapjack.Exp.var Flapjack.VarKind.global "b2_sigma",
                          Flapjack.Exp.panOp Flapjack.PanOp.mul
                            [Flapjack.Exp.var Flapjack.VarKind.local "row", Flapjack.Exp.const 8#64]]))
                    (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 11#64, Flapjack.Exp.const 4#64]),
                  Flapjack.Exp.const 15#64],
              Flapjack.Exp.const 8#64]])]

def body624_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "blake2_g"
  [Flapjack.Exp.const 2#64, Flapjack.Exp.const 7#64, Flapjack.Exp.const 8#64, Flapjack.Exp.const 13#64,
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "m",
          Flapjack.Exp.panOp Flapjack.PanOp.mul
            [Flapjack.Exp.op Flapjack.BinOp.and
                [Flapjack.Exp.shift Flapjack.Shift.lsr
                    (Flapjack.Exp.load Flapjack.Shape.one
                      (Flapjack.Exp.op Flapjack.BinOp.add
                        [Flapjack.Exp.var Flapjack.VarKind.global "b2_sigma",
                          Flapjack.Exp.panOp Flapjack.PanOp.mul
                            [Flapjack.Exp.var Flapjack.VarKind.local "row", Flapjack.Exp.const 8#64]]))
                    (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 12#64, Flapjack.Exp.const 4#64]),
                  Flapjack.Exp.const 15#64],
              Flapjack.Exp.const 8#64]]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "m",
          Flapjack.Exp.panOp Flapjack.PanOp.mul
            [Flapjack.Exp.op Flapjack.BinOp.and
                [Flapjack.Exp.shift Flapjack.Shift.lsr
                    (Flapjack.Exp.load Flapjack.Shape.one
                      (Flapjack.Exp.op Flapjack.BinOp.add
                        [Flapjack.Exp.var Flapjack.VarKind.global "b2_sigma",
                          Flapjack.Exp.panOp Flapjack.PanOp.mul
                            [Flapjack.Exp.var Flapjack.VarKind.local "row", Flapjack.Exp.const 8#64]]))
                    (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 13#64, Flapjack.Exp.const 4#64]),
                  Flapjack.Exp.const 15#64],
              Flapjack.Exp.const 8#64]])]

def body624_14 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "blake2_g"
  [Flapjack.Exp.const 3#64, Flapjack.Exp.const 4#64, Flapjack.Exp.const 9#64, Flapjack.Exp.const 14#64,
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "m",
          Flapjack.Exp.panOp Flapjack.PanOp.mul
            [Flapjack.Exp.op Flapjack.BinOp.and
                [Flapjack.Exp.shift Flapjack.Shift.lsr
                    (Flapjack.Exp.load Flapjack.Shape.one
                      (Flapjack.Exp.op Flapjack.BinOp.add
                        [Flapjack.Exp.var Flapjack.VarKind.global "b2_sigma",
                          Flapjack.Exp.panOp Flapjack.PanOp.mul
                            [Flapjack.Exp.var Flapjack.VarKind.local "row", Flapjack.Exp.const 8#64]]))
                    (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 14#64, Flapjack.Exp.const 4#64]),
                  Flapjack.Exp.const 15#64],
              Flapjack.Exp.const 8#64]]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "m",
          Flapjack.Exp.panOp Flapjack.PanOp.mul
            [Flapjack.Exp.op Flapjack.BinOp.and
                [Flapjack.Exp.shift Flapjack.Shift.lsr
                    (Flapjack.Exp.load Flapjack.Shape.one
                      (Flapjack.Exp.op Flapjack.BinOp.add
                        [Flapjack.Exp.var Flapjack.VarKind.global "b2_sigma",
                          Flapjack.Exp.panOp Flapjack.PanOp.mul
                            [Flapjack.Exp.var Flapjack.VarKind.local "row", Flapjack.Exp.const 8#64]]))
                    (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 15#64, Flapjack.Exp.const 4#64]),
                  Flapjack.Exp.const 15#64],
              Flapjack.Exp.const 8#64]])]

def body624_15 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "r"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 1#64])

def body624_16 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "row"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "row", Flapjack.Exp.const 1#64])

def body624_17 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "row" (Flapjack.Exp.const 0#64)

def body624_18 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "row") (Flapjack.Exp.const 10#64)) body624_17 body624_5

def body624_19 : Prog (BitVec 64) :=
.seq body624_16 body624_18

def body624_20 : Prog (BitVec 64) :=
.seq body624_15 body624_19

def body624_21 : Prog (BitVec 64) :=
.seq body624_14 body624_20

def body624_22 : Prog (BitVec 64) :=
.seq body624_13 body624_21

def body624_23 : Prog (BitVec 64) :=
.seq body624_12 body624_22

def body624_24 : Prog (BitVec 64) :=
.seq body624_11 body624_23

def body624_25 : Prog (BitVec 64) :=
.seq body624_10 body624_24

def body624_26 : Prog (BitVec 64) :=
.seq body624_9 body624_25

def body624_27 : Prog (BitVec 64) :=
.seq body624_8 body624_26

def body624_28 : Prog (BitVec 64) :=
.seq body624_7 body624_27

def body624_29 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "r")
  (Flapjack.Exp.var Flapjack.VarKind.local "rounds")) body624_28

def body624_30 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "h",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "h",
            Flapjack.Exp.panOp Flapjack.PanOp.mul
              [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]]),
      Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.global "b2_v",
            Flapjack.Exp.panOp Flapjack.PanOp.mul
              [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]]),
      Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.global "b2_v",
            Flapjack.Exp.panOp Flapjack.PanOp.mul
              [Flapjack.Exp.op Flapjack.BinOp.add
                  [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64],
                Flapjack.Exp.const 8#64]])])

def body624_31 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body624_32 : Prog (BitVec 64) :=
.seq body624_30 body624_31

def body624_33 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 8#64)) body624_32

def body624_34 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body624_35 : Prog (BitVec 64) :=
.seq body624_33 body624_34

def body624_36 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body624_35

def body624_37 : Prog (BitVec 64) :=
.seq body624_29 body624_36

def body624_38 : Prog (BitVec 64) :=
.dec ("row") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body624_37

def body624_39 : Prog (BitVec 64) :=
.dec ("r") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body624_38

def body624_40 : Prog (BitVec 64) :=
.seq body624_6 body624_39

def body624_41 : Prog (BitVec 64) :=
.seq body624_3 body624_40

def body624_42 : Prog (BitVec 64) :=
.seq body624_2 body624_41

def body624_43 : Prog (BitVec 64) :=
.seq body624_1 body624_42

def body624_44 : Prog (BitVec 64) :=
.seq body624_0 body624_43

def body624_45 : Prog (BitVec 64) :=
.seq body624_0 body624_1

def body624_46 : Prog (BitVec 64) :=
.seq body624_45 body624_2

def body624_47 : Prog (BitVec 64) :=
.seq body624_46 body624_3

def body624_48 : Prog (BitVec 64) :=
.seq body624_47 body624_6

def body624_49 : Prog (BitVec 64) :=
.seq body624_7 body624_8

def body624_50 : Prog (BitVec 64) :=
.seq body624_49 body624_9

def body624_51 : Prog (BitVec 64) :=
.seq body624_50 body624_10

def body624_52 : Prog (BitVec 64) :=
.seq body624_51 body624_11

def body624_53 : Prog (BitVec 64) :=
.seq body624_52 body624_12

def body624_54 : Prog (BitVec 64) :=
.seq body624_53 body624_13

def body624_55 : Prog (BitVec 64) :=
.seq body624_54 body624_14

def body624_56 : Prog (BitVec 64) :=
.seq body624_55 body624_15

def body624_57 : Prog (BitVec 64) :=
.seq body624_56 body624_16

def body624_58 : Prog (BitVec 64) :=
.seq body624_57 body624_18

def body624_59 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "r")
  (Flapjack.Exp.var Flapjack.VarKind.local "rounds")) body624_58

def body624_60 : Prog (BitVec 64) :=
.seq body624_59 body624_36

def body624_61 : Prog (BitVec 64) :=
.dec ("row") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body624_60

def body624_62 : Prog (BitVec 64) :=
.dec ("r") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body624_61

def body624_63 : Prog (BitVec 64) :=
.seq body624_48 body624_62

def originalData624 : Decl (BitVec 64) :=
.function { name := "blake2b_f", inline := false, exported := false, params := [("rounds", Flapjack.Shape.one), ("h", Flapjack.Shape.one), ("m", Flapjack.Shape.one), ("t0", Flapjack.Shape.one),
  ("t1", Flapjack.Shape.one), ("f", Flapjack.Shape.one)], body := body624_44, returnShape := (Flapjack.Shape.one) }
def simplifiedData624 : Decl (BitVec 64) :=
.function { name := "blake2b_f", inline := false, exported := false, params := [("rounds", Flapjack.Shape.one), ("h", Flapjack.Shape.one), ("m", Flapjack.Shape.one), ("t0", Flapjack.Shape.one),
  ("t1", Flapjack.Shape.one), ("f", Flapjack.Shape.one)], body := body624_63, returnShape := (Flapjack.Shape.one) }
def original624 := Pancake.PanLang.declToHOL originalData624
def simplified624 := Pancake.PanLang.declToHOL simplifiedData624
end InitECandidate.Proofs.FrontendStages.Declarations
