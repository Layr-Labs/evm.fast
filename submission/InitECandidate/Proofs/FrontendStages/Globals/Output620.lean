import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data620
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate597
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody620_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 368#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 64#64]

def globalBody620_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 368#64]),
        Flapjack.Exp.const 64#64],
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 360#64]),
    Flapjack.Exp.const 64#64]

def globalBody620_2 : Prog (BitVec 64) :=
.seq globalBody620_0 globalBody620_1

def globalBody620_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 368#64]),
      Flapjack.Exp.const 96#64])
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 368#64]),
            Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 12#64, Flapjack.Exp.const 8#64]]),
      Flapjack.Exp.var Flapjack.VarKind.local "t0"])

def globalBody620_4 : Prog (BitVec 64) :=
.seq globalBody620_2 globalBody620_3

def globalBody620_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 368#64]),
      Flapjack.Exp.const 104#64])
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 368#64]),
            Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 13#64, Flapjack.Exp.const 8#64]]),
      Flapjack.Exp.var Flapjack.VarKind.local "t1"])

def globalBody620_6 : Prog (BitVec 64) :=
.seq globalBody620_4 globalBody620_5

def globalBody620_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 368#64]),
      Flapjack.Exp.const 112#64])
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 368#64]),
            Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 14#64, Flapjack.Exp.const 8#64]]),
      Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 0#64, Flapjack.Exp.const 1#64]])

def globalBody620_8 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody620_9 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "f") (Flapjack.Exp.const 0#64)) globalBody620_7 globalBody620_8

def globalBody620_10 : Prog (BitVec 64) :=
.seq globalBody620_6 globalBody620_9

def globalBody620_11 : Prog (BitVec 64) :=
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
                        [Flapjack.Exp.load Flapjack.Shape.one
                            (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 352#64]),
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
                        [Flapjack.Exp.load Flapjack.Shape.one
                            (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 352#64]),
                          Flapjack.Exp.panOp Flapjack.PanOp.mul
                            [Flapjack.Exp.var Flapjack.VarKind.local "row", Flapjack.Exp.const 8#64]]))
                    (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 1#64, Flapjack.Exp.const 4#64]),
                  Flapjack.Exp.const 15#64],
              Flapjack.Exp.const 8#64]])]

def globalBody620_12 : Prog (BitVec 64) :=
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
                        [Flapjack.Exp.load Flapjack.Shape.one
                            (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 352#64]),
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
                        [Flapjack.Exp.load Flapjack.Shape.one
                            (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 352#64]),
                          Flapjack.Exp.panOp Flapjack.PanOp.mul
                            [Flapjack.Exp.var Flapjack.VarKind.local "row", Flapjack.Exp.const 8#64]]))
                    (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 3#64, Flapjack.Exp.const 4#64]),
                  Flapjack.Exp.const 15#64],
              Flapjack.Exp.const 8#64]])]

def globalBody620_13 : Prog (BitVec 64) :=
.seq globalBody620_11 globalBody620_12

def globalBody620_14 : Prog (BitVec 64) :=
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
                        [Flapjack.Exp.load Flapjack.Shape.one
                            (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 352#64]),
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
                        [Flapjack.Exp.load Flapjack.Shape.one
                            (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 352#64]),
                          Flapjack.Exp.panOp Flapjack.PanOp.mul
                            [Flapjack.Exp.var Flapjack.VarKind.local "row", Flapjack.Exp.const 8#64]]))
                    (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 5#64, Flapjack.Exp.const 4#64]),
                  Flapjack.Exp.const 15#64],
              Flapjack.Exp.const 8#64]])]

def globalBody620_15 : Prog (BitVec 64) :=
.seq globalBody620_13 globalBody620_14

def globalBody620_16 : Prog (BitVec 64) :=
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
                        [Flapjack.Exp.load Flapjack.Shape.one
                            (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 352#64]),
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
                        [Flapjack.Exp.load Flapjack.Shape.one
                            (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 352#64]),
                          Flapjack.Exp.panOp Flapjack.PanOp.mul
                            [Flapjack.Exp.var Flapjack.VarKind.local "row", Flapjack.Exp.const 8#64]]))
                    (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 7#64, Flapjack.Exp.const 4#64]),
                  Flapjack.Exp.const 15#64],
              Flapjack.Exp.const 8#64]])]

def globalBody620_17 : Prog (BitVec 64) :=
.seq globalBody620_15 globalBody620_16

def globalBody620_18 : Prog (BitVec 64) :=
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
                        [Flapjack.Exp.load Flapjack.Shape.one
                            (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 352#64]),
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
                        [Flapjack.Exp.load Flapjack.Shape.one
                            (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 352#64]),
                          Flapjack.Exp.panOp Flapjack.PanOp.mul
                            [Flapjack.Exp.var Flapjack.VarKind.local "row", Flapjack.Exp.const 8#64]]))
                    (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 9#64, Flapjack.Exp.const 4#64]),
                  Flapjack.Exp.const 15#64],
              Flapjack.Exp.const 8#64]])]

def globalBody620_19 : Prog (BitVec 64) :=
.seq globalBody620_17 globalBody620_18

def globalBody620_20 : Prog (BitVec 64) :=
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
                        [Flapjack.Exp.load Flapjack.Shape.one
                            (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 352#64]),
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
                        [Flapjack.Exp.load Flapjack.Shape.one
                            (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 352#64]),
                          Flapjack.Exp.panOp Flapjack.PanOp.mul
                            [Flapjack.Exp.var Flapjack.VarKind.local "row", Flapjack.Exp.const 8#64]]))
                    (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 11#64, Flapjack.Exp.const 4#64]),
                  Flapjack.Exp.const 15#64],
              Flapjack.Exp.const 8#64]])]

def globalBody620_21 : Prog (BitVec 64) :=
.seq globalBody620_19 globalBody620_20

def globalBody620_22 : Prog (BitVec 64) :=
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
                        [Flapjack.Exp.load Flapjack.Shape.one
                            (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 352#64]),
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
                        [Flapjack.Exp.load Flapjack.Shape.one
                            (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 352#64]),
                          Flapjack.Exp.panOp Flapjack.PanOp.mul
                            [Flapjack.Exp.var Flapjack.VarKind.local "row", Flapjack.Exp.const 8#64]]))
                    (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 13#64, Flapjack.Exp.const 4#64]),
                  Flapjack.Exp.const 15#64],
              Flapjack.Exp.const 8#64]])]

def globalBody620_23 : Prog (BitVec 64) :=
.seq globalBody620_21 globalBody620_22

def globalBody620_24 : Prog (BitVec 64) :=
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
                        [Flapjack.Exp.load Flapjack.Shape.one
                            (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 352#64]),
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
                        [Flapjack.Exp.load Flapjack.Shape.one
                            (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 352#64]),
                          Flapjack.Exp.panOp Flapjack.PanOp.mul
                            [Flapjack.Exp.var Flapjack.VarKind.local "row", Flapjack.Exp.const 8#64]]))
                    (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 15#64, Flapjack.Exp.const 4#64]),
                  Flapjack.Exp.const 15#64],
              Flapjack.Exp.const 8#64]])]

def globalBody620_25 : Prog (BitVec 64) :=
.seq globalBody620_23 globalBody620_24

def globalBody620_26 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "r"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 1#64])

def globalBody620_27 : Prog (BitVec 64) :=
.seq globalBody620_25 globalBody620_26

def globalBody620_28 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "row"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "row", Flapjack.Exp.const 1#64])

def globalBody620_29 : Prog (BitVec 64) :=
.seq globalBody620_27 globalBody620_28

def globalBody620_30 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "row" (Flapjack.Exp.const 0#64)

def globalBody620_31 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "row") (Flapjack.Exp.const 10#64)) globalBody620_30 globalBody620_8

def globalBody620_32 : Prog (BitVec 64) :=
.seq globalBody620_29 globalBody620_31

def globalBody620_33 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "r")
  (Flapjack.Exp.var Flapjack.VarKind.local "rounds")) globalBody620_32

def globalBody620_34 : Prog (BitVec 64) :=
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
          [Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 368#64]),
            Flapjack.Exp.panOp Flapjack.PanOp.mul
              [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]]),
      Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 368#64]),
            Flapjack.Exp.panOp Flapjack.PanOp.mul
              [Flapjack.Exp.op Flapjack.BinOp.add
                  [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64],
                Flapjack.Exp.const 8#64]])])

def globalBody620_35 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody620_36 : Prog (BitVec 64) :=
.seq globalBody620_34 globalBody620_35

def globalBody620_37 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 8#64)) globalBody620_36

def globalBody620_38 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody620_39 : Prog (BitVec 64) :=
.seq globalBody620_37 globalBody620_38

def globalBody620_40 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody620_39

def globalBody620_41 : Prog (BitVec 64) :=
.seq globalBody620_33 globalBody620_40

def globalBody620_42 : Prog (BitVec 64) :=
.dec ("row") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody620_41

def globalBody620_43 : Prog (BitVec 64) :=
.dec ("r") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody620_42

def globalBody620_44 : Prog (BitVec 64) :=
.seq globalBody620_10 globalBody620_43

def globalData620 : Decl (BitVec 64) :=
.function { name := "blake2b_f", inline := false, exported := false, params := [("rounds", Flapjack.Shape.one), ("h", Flapjack.Shape.one), ("m", Flapjack.Shape.one), ("t0", Flapjack.Shape.one),
  ("t1", Flapjack.Shape.one), ("f", Flapjack.Shape.one)], body := globalBody620_44, returnShape := (Flapjack.Shape.one) }
def globalOutput620 := Pancake.PanLang.declToHOL globalData620
end InitECandidate.Proofs.FrontendStages.Declarations
