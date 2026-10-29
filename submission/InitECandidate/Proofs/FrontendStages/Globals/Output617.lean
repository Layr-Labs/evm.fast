import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data617
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
def globalBody617_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 328#64]),
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "blk",
            Flapjack.Exp.panOp Flapjack.PanOp.mul
              [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 4#64]]),
      Flapjack.Exp.shift Flapjack.Shift.lsl
        (Flapjack.Exp.loadByte
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "blk",
              Flapjack.Exp.panOp Flapjack.PanOp.mul
                [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 4#64],
              Flapjack.Exp.const 1#64]))
        (Flapjack.Exp.const 8#64),
      Flapjack.Exp.shift Flapjack.Shift.lsl
        (Flapjack.Exp.loadByte
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "blk",
              Flapjack.Exp.panOp Flapjack.PanOp.mul
                [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 4#64],
              Flapjack.Exp.const 2#64]))
        (Flapjack.Exp.const 16#64),
      Flapjack.Exp.shift Flapjack.Shift.lsl
        (Flapjack.Exp.loadByte
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "blk",
              Flapjack.Exp.panOp Flapjack.PanOp.mul
                [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 4#64],
              Flapjack.Exp.const 3#64]))
        (Flapjack.Exp.const 24#64)])

def globalBody617_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody617_2 : Prog (BitVec 64) :=
.seq globalBody617_0 globalBody617_1

def globalBody617_3 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 16#64)) globalBody617_2

def globalBody617_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t"
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "t")
                    (Flapjack.Exp.var Flapjack.VarKind.local "sl"),
                  Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "t")
                    (Flapjack.Exp.op Flapjack.BinOp.sub
                      [Flapjack.Exp.const 32#64, Flapjack.Exp.var Flapjack.VarKind.local "sl"])],
              Flapjack.Exp.const 4294967295#64],
          Flapjack.Exp.var Flapjack.VarKind.local "e"],
      Flapjack.Exp.const 4294967295#64])

def globalBody617_5 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a" (Flapjack.Exp.var Flapjack.VarKind.local "e")

def globalBody617_6 : Prog (BitVec 64) :=
.seq globalBody617_4 globalBody617_5

def globalBody617_7 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "e" (Flapjack.Exp.var Flapjack.VarKind.local "d")

def globalBody617_8 : Prog (BitVec 64) :=
.seq globalBody617_6 globalBody617_7

def globalBody617_9 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d"
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.op Flapjack.BinOp.or
        [Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "c") (Flapjack.Exp.const 10#64),
          Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "c")
            (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 32#64, Flapjack.Exp.const 10#64])],
      Flapjack.Exp.const 4294967295#64])

def globalBody617_10 : Prog (BitVec 64) :=
.seq globalBody617_8 globalBody617_9

def globalBody617_11 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "c" (Flapjack.Exp.var Flapjack.VarKind.local "b")

def globalBody617_12 : Prog (BitVec 64) :=
.seq globalBody617_10 globalBody617_11

def globalBody617_13 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "b" (Flapjack.Exp.var Flapjack.VarKind.local "t")

def globalBody617_14 : Prog (BitVec 64) :=
.seq globalBody617_12 globalBody617_13

def globalBody617_15 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "tp"
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "tp")
                    (Flapjack.Exp.var Flapjack.VarKind.local "sr"),
                  Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "tp")
                    (Flapjack.Exp.op Flapjack.BinOp.sub
                      [Flapjack.Exp.const 32#64, Flapjack.Exp.var Flapjack.VarKind.local "sr"])],
              Flapjack.Exp.const 4294967295#64],
          Flapjack.Exp.var Flapjack.VarKind.local "ep"],
      Flapjack.Exp.const 4294967295#64])

def globalBody617_16 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "ap" (Flapjack.Exp.var Flapjack.VarKind.local "ep")

def globalBody617_17 : Prog (BitVec 64) :=
.seq globalBody617_15 globalBody617_16

def globalBody617_18 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "ep" (Flapjack.Exp.var Flapjack.VarKind.local "dp")

def globalBody617_19 : Prog (BitVec 64) :=
.seq globalBody617_17 globalBody617_18

def globalBody617_20 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "dp"
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.op Flapjack.BinOp.or
        [Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "cp")
            (Flapjack.Exp.const 10#64),
          Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "cp")
            (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 32#64, Flapjack.Exp.const 10#64])],
      Flapjack.Exp.const 4294967295#64])

def globalBody617_21 : Prog (BitVec 64) :=
.seq globalBody617_19 globalBody617_20

def globalBody617_22 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "cp" (Flapjack.Exp.var Flapjack.VarKind.local "bp")

def globalBody617_23 : Prog (BitVec 64) :=
.seq globalBody617_21 globalBody617_22

def globalBody617_24 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "bp" (Flapjack.Exp.var Flapjack.VarKind.local "tp")

def globalBody617_25 : Prog (BitVec 64) :=
.seq globalBody617_23 globalBody617_24

def globalBody617_26 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "j"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 1#64])

def globalBody617_27 : Prog (BitVec 64) :=
.seq globalBody617_25 globalBody617_26

def globalBody617_28 : Prog (BitVec 64) :=
.dec ("sr") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.shift Flapjack.Shift.lsr
      (Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 320#64]),
            Flapjack.Exp.panOp Flapjack.PanOp.mul
              [Flapjack.Exp.op Flapjack.BinOp.add
                  [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 3#64, Flapjack.Exp.const 5#64],
                    Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "j")
                      (Flapjack.Exp.const 4#64)],
                Flapjack.Exp.const 8#64]]))
      (Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 15#64],
          Flapjack.Exp.const 4#64]),
    Flapjack.Exp.const 15#64]) globalBody617_27

def globalBody617_29 : Prog (BitVec 64) :=
.dec ("tp") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "ap", Flapjack.Exp.var Flapjack.VarKind.local "fr",
        Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.load Flapjack.Shape.one
                (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 328#64]),
              Flapjack.Exp.panOp Flapjack.PanOp.mul
                [Flapjack.Exp.op Flapjack.BinOp.and
                    [Flapjack.Exp.shift Flapjack.Shift.lsr
                        (Flapjack.Exp.load Flapjack.Shape.one
                          (Flapjack.Exp.op Flapjack.BinOp.add
                            [Flapjack.Exp.load Flapjack.Shape.one
                                (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 320#64]),
                              Flapjack.Exp.panOp Flapjack.PanOp.mul
                                [Flapjack.Exp.op Flapjack.BinOp.add
                                    [Flapjack.Exp.panOp Flapjack.PanOp.mul
                                        [Flapjack.Exp.const 1#64, Flapjack.Exp.const 5#64],
                                      Flapjack.Exp.shift Flapjack.Shift.lsr
                                        (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 4#64)],
                                  Flapjack.Exp.const 8#64]]))
                        (Flapjack.Exp.panOp Flapjack.PanOp.mul
                          [Flapjack.Exp.op Flapjack.BinOp.and
                              [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 15#64],
                            Flapjack.Exp.const 4#64]),
                      Flapjack.Exp.const 15#64],
                  Flapjack.Exp.const 8#64]]),
        Flapjack.Exp.var Flapjack.VarKind.local "kr"],
    Flapjack.Exp.const 4294967295#64]) globalBody617_28

def globalBody617_30 : Prog (BitVec 64) :=
.decCall ("kr") (Flapjack.Shape.one) ("rmd_kp") ([Flapjack.Exp.var Flapjack.VarKind.local "j"]) globalBody617_29

def globalBody617_31 : Prog (BitVec 64) :=
.decCall ("fr") (Flapjack.Shape.one) ("rmd_f") ([Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 79#64, Flapjack.Exp.var Flapjack.VarKind.local "j"],
  Flapjack.Exp.var Flapjack.VarKind.local "bp", Flapjack.Exp.var Flapjack.VarKind.local "cp",
  Flapjack.Exp.var Flapjack.VarKind.local "dp"]) globalBody617_30

def globalBody617_32 : Prog (BitVec 64) :=
.seq globalBody617_14 globalBody617_31

def globalBody617_33 : Prog (BitVec 64) :=
.dec ("sl") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.shift Flapjack.Shift.lsr
      (Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 320#64]),
            Flapjack.Exp.panOp Flapjack.PanOp.mul
              [Flapjack.Exp.op Flapjack.BinOp.add
                  [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.const 5#64],
                    Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "j")
                      (Flapjack.Exp.const 4#64)],
                Flapjack.Exp.const 8#64]]))
      (Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 15#64],
          Flapjack.Exp.const 4#64]),
    Flapjack.Exp.const 15#64]) globalBody617_32

def globalBody617_34 : Prog (BitVec 64) :=
.dec ("t") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "fl",
        Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.load Flapjack.Shape.one
                (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 328#64]),
              Flapjack.Exp.panOp Flapjack.PanOp.mul
                [Flapjack.Exp.op Flapjack.BinOp.and
                    [Flapjack.Exp.shift Flapjack.Shift.lsr
                        (Flapjack.Exp.load Flapjack.Shape.one
                          (Flapjack.Exp.op Flapjack.BinOp.add
                            [Flapjack.Exp.load Flapjack.Shape.one
                                (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 320#64]),
                              Flapjack.Exp.panOp Flapjack.PanOp.mul
                                [Flapjack.Exp.op Flapjack.BinOp.add
                                    [Flapjack.Exp.panOp Flapjack.PanOp.mul
                                        [Flapjack.Exp.const 0#64, Flapjack.Exp.const 5#64],
                                      Flapjack.Exp.shift Flapjack.Shift.lsr
                                        (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 4#64)],
                                  Flapjack.Exp.const 8#64]]))
                        (Flapjack.Exp.panOp Flapjack.PanOp.mul
                          [Flapjack.Exp.op Flapjack.BinOp.and
                              [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 15#64],
                            Flapjack.Exp.const 4#64]),
                      Flapjack.Exp.const 15#64],
                  Flapjack.Exp.const 8#64]]),
        Flapjack.Exp.var Flapjack.VarKind.local "kl"],
    Flapjack.Exp.const 4294967295#64]) globalBody617_33

def globalBody617_35 : Prog (BitVec 64) :=
.decCall ("kl") (Flapjack.Shape.one) ("rmd_k") ([Flapjack.Exp.var Flapjack.VarKind.local "j"]) globalBody617_34

def globalBody617_36 : Prog (BitVec 64) :=
.decCall ("fl") (Flapjack.Shape.one) ("rmd_f") ([Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.var Flapjack.VarKind.local "b",
  Flapjack.Exp.var Flapjack.VarKind.local "c", Flapjack.Exp.var Flapjack.VarKind.local "d"]) globalBody617_35

def globalBody617_37 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 80#64)) globalBody617_36

def globalBody617_38 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "hp")
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "h1", Flapjack.Exp.var Flapjack.VarKind.local "c",
          Flapjack.Exp.var Flapjack.VarKind.local "dp"],
      Flapjack.Exp.const 4294967295#64])

def globalBody617_39 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hp", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "h2", Flapjack.Exp.var Flapjack.VarKind.local "d",
          Flapjack.Exp.var Flapjack.VarKind.local "ep"],
      Flapjack.Exp.const 4294967295#64])

def globalBody617_40 : Prog (BitVec 64) :=
.seq globalBody617_38 globalBody617_39

def globalBody617_41 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hp", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "h3", Flapjack.Exp.var Flapjack.VarKind.local "e",
          Flapjack.Exp.var Flapjack.VarKind.local "ap"],
      Flapjack.Exp.const 4294967295#64])

def globalBody617_42 : Prog (BitVec 64) :=
.seq globalBody617_40 globalBody617_41

def globalBody617_43 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hp", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "h4", Flapjack.Exp.var Flapjack.VarKind.local "a",
          Flapjack.Exp.var Flapjack.VarKind.local "bp"],
      Flapjack.Exp.const 4294967295#64])

def globalBody617_44 : Prog (BitVec 64) :=
.seq globalBody617_42 globalBody617_43

def globalBody617_45 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hp", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "h0", Flapjack.Exp.var Flapjack.VarKind.local "b",
          Flapjack.Exp.var Flapjack.VarKind.local "cp"],
      Flapjack.Exp.const 4294967295#64])

def globalBody617_46 : Prog (BitVec 64) :=
.seq globalBody617_44 globalBody617_45

def globalBody617_47 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody617_48 : Prog (BitVec 64) :=
.seq globalBody617_46 globalBody617_47

def globalBody617_49 : Prog (BitVec 64) :=
.dec ("h4") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hp", Flapjack.Exp.const 32#64])) globalBody617_48

def globalBody617_50 : Prog (BitVec 64) :=
.dec ("h3") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hp", Flapjack.Exp.const 24#64])) globalBody617_49

def globalBody617_51 : Prog (BitVec 64) :=
.dec ("h2") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hp", Flapjack.Exp.const 16#64])) globalBody617_50

def globalBody617_52 : Prog (BitVec 64) :=
.dec ("h1") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hp", Flapjack.Exp.const 8#64])) globalBody617_51

def globalBody617_53 : Prog (BitVec 64) :=
.dec ("h0") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "hp")) globalBody617_52

def globalBody617_54 : Prog (BitVec 64) :=
.seq globalBody617_37 globalBody617_53

def globalBody617_55 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody617_54

def globalBody617_56 : Prog (BitVec 64) :=
.dec ("ep") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "e") globalBody617_55

def globalBody617_57 : Prog (BitVec 64) :=
.dec ("dp") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "d") globalBody617_56

def globalBody617_58 : Prog (BitVec 64) :=
.dec ("cp") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "c") globalBody617_57

def globalBody617_59 : Prog (BitVec 64) :=
.dec ("bp") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "b") globalBody617_58

def globalBody617_60 : Prog (BitVec 64) :=
.dec ("ap") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "a") globalBody617_59

def globalBody617_61 : Prog (BitVec 64) :=
.dec ("e") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hp", Flapjack.Exp.const 32#64])) globalBody617_60

def globalBody617_62 : Prog (BitVec 64) :=
.dec ("d") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hp", Flapjack.Exp.const 24#64])) globalBody617_61

def globalBody617_63 : Prog (BitVec 64) :=
.dec ("c") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hp", Flapjack.Exp.const 16#64])) globalBody617_62

def globalBody617_64 : Prog (BitVec 64) :=
.dec ("b") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hp", Flapjack.Exp.const 8#64])) globalBody617_63

def globalBody617_65 : Prog (BitVec 64) :=
.dec ("a") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "hp")) globalBody617_64

def globalBody617_66 : Prog (BitVec 64) :=
.seq globalBody617_3 globalBody617_65

def globalBody617_67 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody617_66

def globalData617 : Decl (BitVec 64) :=
.function { name := "ripemd160_block", inline := false, exported := false, params := [("hp", Flapjack.Shape.one), ("blk", Flapjack.Shape.one)], body := globalBody617_67, returnShape := (Flapjack.Shape.one) }
def globalOutput617 := Pancake.PanLang.declToHOL globalData617
end InitECandidate.Proofs.FrontendStages.Declarations
