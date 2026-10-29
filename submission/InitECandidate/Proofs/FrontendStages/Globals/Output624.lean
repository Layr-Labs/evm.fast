import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data624
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate601
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody624_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 368#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 64#64]

def globalBody624_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 368#64]),
        Flapjack.Exp.const 64#64],
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 360#64]),
    Flapjack.Exp.const 64#64]

def globalBody624_2 : Prog (BitVec 64) :=
.seq globalBody624_0 globalBody624_1

def globalBody624_3 : Prog (BitVec 64) :=
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

def globalBody624_4 : Prog (BitVec 64) :=
.seq globalBody624_2 globalBody624_3

def globalBody624_5 : Prog (BitVec 64) :=
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

def globalBody624_6 : Prog (BitVec 64) :=
.seq globalBody624_4 globalBody624_5

def globalBody624_7 : Prog (BitVec 64) :=
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

def globalBody624_8 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody624_9 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "f") (Flapjack.Exp.const 0#64)) globalBody624_7 globalBody624_8

def globalBody624_10 : Prog (BitVec 64) :=
.seq globalBody624_6 globalBody624_9

def globalBody624_11 : Prog (BitVec 64) :=
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

def globalBody624_12 : Prog (BitVec 64) :=
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

def globalBody624_13 : Prog (BitVec 64) :=
.seq globalBody624_11 globalBody624_12

def globalBody624_14 : Prog (BitVec 64) :=
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

def globalBody624_15 : Prog (BitVec 64) :=
.seq globalBody624_13 globalBody624_14

def globalBody624_16 : Prog (BitVec 64) :=
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

def globalBody624_17 : Prog (BitVec 64) :=
.seq globalBody624_15 globalBody624_16

def globalBody624_18 : Prog (BitVec 64) :=
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

def globalBody624_19 : Prog (BitVec 64) :=
.seq globalBody624_17 globalBody624_18

def globalBody624_20 : Prog (BitVec 64) :=
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

def globalBody624_21 : Prog (BitVec 64) :=
.seq globalBody624_19 globalBody624_20

def globalBody624_22 : Prog (BitVec 64) :=
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

def globalBody624_23 : Prog (BitVec 64) :=
.seq globalBody624_21 globalBody624_22

def globalBody624_24 : Prog (BitVec 64) :=
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

def globalBody624_25 : Prog (BitVec 64) :=
.seq globalBody624_23 globalBody624_24

def globalBody624_26 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "r"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 1#64])

def globalBody624_27 : Prog (BitVec 64) :=
.seq globalBody624_25 globalBody624_26

def globalBody624_28 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "row"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "row", Flapjack.Exp.const 1#64])

def globalBody624_29 : Prog (BitVec 64) :=
.seq globalBody624_27 globalBody624_28

def globalBody624_30 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "row" (Flapjack.Exp.const 0#64)

def globalBody624_31 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "row") (Flapjack.Exp.const 10#64)) globalBody624_30 globalBody624_8

def globalBody624_32 : Prog (BitVec 64) :=
.seq globalBody624_29 globalBody624_31

def globalBody624_33 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "r")
  (Flapjack.Exp.var Flapjack.VarKind.local "rounds")) globalBody624_32

def globalBody624_34 : Prog (BitVec 64) :=
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

def globalBody624_35 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody624_36 : Prog (BitVec 64) :=
.seq globalBody624_34 globalBody624_35

def globalBody624_37 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 8#64)) globalBody624_36

def globalBody624_38 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody624_39 : Prog (BitVec 64) :=
.seq globalBody624_37 globalBody624_38

def globalBody624_40 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody624_39

def globalBody624_41 : Prog (BitVec 64) :=
.seq globalBody624_33 globalBody624_40

def globalBody624_42 : Prog (BitVec 64) :=
.dec ("row") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody624_41

def globalBody624_43 : Prog (BitVec 64) :=
.dec ("r") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody624_42

def globalBody624_44 : Prog (BitVec 64) :=
.seq globalBody624_10 globalBody624_43

def globalData624 : Decl (BitVec 64) :=
.function { name := "blake2b_f", inline := false, exported := false, params := [("rounds", Flapjack.Shape.one), ("h", Flapjack.Shape.one), ("m", Flapjack.Shape.one), ("t0", Flapjack.Shape.one),
  ("t1", Flapjack.Shape.one), ("f", Flapjack.Shape.one)], body := globalBody624_44, returnShape := (Flapjack.Shape.one) }
def globalOutput624 := Pancake.PanLang.declToHOL globalData624
end InitECandidate.Proofs.FrontendStages.Declarations
