import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data68
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate52
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody68_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "j" (Flapjack.Exp.var Flapjack.VarKind.local "m")

def globalBody68_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "j"
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 1#64])

def globalBody68_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "q",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "qr"))

def globalBody68_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "k" (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "qr"))

def globalBody68_4 : Prog (BitVec 64) :=
.seq globalBody68_2 globalBody68_3

def globalBody68_5 : Prog (BitVec 64) :=
.decCall ("qr") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("div64by32") ([Flapjack.Exp.var Flapjack.VarKind.local "k",
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "u",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 8#64]]),
  Flapjack.Exp.var Flapjack.VarKind.local "d"]) globalBody68_4

def globalBody68_6 : Prog (BitVec 64) :=
.seq globalBody68_1 globalBody68_5

def globalBody68_7 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "j")) globalBody68_6

def globalBody68_8 : Prog (BitVec 64) :=
.seq globalBody68_0 globalBody68_7

def globalBody68_9 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "r") (Flapjack.Exp.var Flapjack.VarKind.local "k")

def globalBody68_10 : Prog (BitVec 64) :=
.seq globalBody68_8 globalBody68_9

def globalBody68_11 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody68_12 : Prog (BitVec 64) :=
.seq globalBody68_10 globalBody68_11

def globalBody68_13 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody68_12

def globalBody68_14 : Prog (BitVec 64) :=
.dec ("d") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "v")) globalBody68_13

def globalBody68_15 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody68_16 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 1#64)) globalBody68_14 globalBody68_15

def globalBody68_17 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 1#64])

def globalBody68_18 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "vn",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.op Flapjack.BinOp.or
        [Flapjack.Exp.shift Flapjack.Shift.lsl
            (Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.add
                [Flapjack.Exp.var Flapjack.VarKind.local "v",
                  Flapjack.Exp.panOp Flapjack.PanOp.mul
                    [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]]))
            (Flapjack.Exp.var Flapjack.VarKind.local "s"),
          Flapjack.Exp.shift Flapjack.Shift.lsr
            (Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.add
                [Flapjack.Exp.var Flapjack.VarKind.local "v",
                  Flapjack.Exp.panOp Flapjack.PanOp.mul
                    [Flapjack.Exp.op Flapjack.BinOp.sub
                        [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64],
                      Flapjack.Exp.const 8#64]]))
            (Flapjack.Exp.op Flapjack.BinOp.sub
              [Flapjack.Exp.const 32#64, Flapjack.Exp.var Flapjack.VarKind.local "s"])],
      Flapjack.Exp.const 4294967295#64])

def globalBody68_19 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody68_20 : Prog (BitVec 64) :=
.seq globalBody68_18 globalBody68_19

def globalBody68_21 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "i")) globalBody68_20

def globalBody68_22 : Prog (BitVec 64) :=
.seq globalBody68_17 globalBody68_21

def globalBody68_23 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "vn")
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.shift Flapjack.Shift.lsl
        (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "v"))
        (Flapjack.Exp.var Flapjack.VarKind.local "s"),
      Flapjack.Exp.const 4294967295#64])

def globalBody68_24 : Prog (BitVec 64) :=
.seq globalBody68_22 globalBody68_23

def globalBody68_25 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "un",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "u",
          Flapjack.Exp.panOp Flapjack.PanOp.mul
            [Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 1#64],
              Flapjack.Exp.const 8#64]]))
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 32#64, Flapjack.Exp.var Flapjack.VarKind.local "s"]))

def globalBody68_26 : Prog (BitVec 64) :=
.seq globalBody68_24 globalBody68_25

def globalBody68_27 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 1#64])

def globalBody68_28 : Prog (BitVec 64) :=
.seq globalBody68_26 globalBody68_27

def globalBody68_29 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "un",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.op Flapjack.BinOp.or
        [Flapjack.Exp.shift Flapjack.Shift.lsl
            (Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.add
                [Flapjack.Exp.var Flapjack.VarKind.local "u",
                  Flapjack.Exp.panOp Flapjack.PanOp.mul
                    [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]]))
            (Flapjack.Exp.var Flapjack.VarKind.local "s"),
          Flapjack.Exp.shift Flapjack.Shift.lsr
            (Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.add
                [Flapjack.Exp.var Flapjack.VarKind.local "u",
                  Flapjack.Exp.panOp Flapjack.PanOp.mul
                    [Flapjack.Exp.op Flapjack.BinOp.sub
                        [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64],
                      Flapjack.Exp.const 8#64]]))
            (Flapjack.Exp.op Flapjack.BinOp.sub
              [Flapjack.Exp.const 32#64, Flapjack.Exp.var Flapjack.VarKind.local "s"])],
      Flapjack.Exp.const 4294967295#64])

def globalBody68_30 : Prog (BitVec 64) :=
.seq globalBody68_29 globalBody68_19

def globalBody68_31 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "i")) globalBody68_30

def globalBody68_32 : Prog (BitVec 64) :=
.seq globalBody68_28 globalBody68_31

def globalBody68_33 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "un")
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.shift Flapjack.Shift.lsl
        (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "u"))
        (Flapjack.Exp.var Flapjack.VarKind.local "s"),
      Flapjack.Exp.const 4294967295#64])

def globalBody68_34 : Prog (BitVec 64) :=
.seq globalBody68_32 globalBody68_33

def globalBody68_35 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "j"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.op Flapjack.BinOp.sub
        [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.var Flapjack.VarKind.local "n"],
      Flapjack.Exp.const 1#64])

def globalBody68_36 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "qhat" (Flapjack.Exp.const 4294967295#64)

def globalBody68_37 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "rhat"
  (Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.op Flapjack.BinOp.or
        [Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "ujn")
            (Flapjack.Exp.const 32#64),
          Flapjack.Exp.var Flapjack.VarKind.local "ujn1"],
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.var Flapjack.VarKind.local "qhat", Flapjack.Exp.var Flapjack.VarKind.local "vtop"]])

def globalBody68_38 : Prog (BitVec 64) :=
.seq globalBody68_36 globalBody68_37

def globalBody68_39 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "qhat"
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "qr"))

def globalBody68_40 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "rhat"
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "qr"))

def globalBody68_41 : Prog (BitVec 64) :=
.seq globalBody68_39 globalBody68_40

def globalBody68_42 : Prog (BitVec 64) :=
.decCall ("qr") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("div64by32") ([Flapjack.Exp.var Flapjack.VarKind.local "ujn", Flapjack.Exp.var Flapjack.VarKind.local "ujn1",
  Flapjack.Exp.var Flapjack.VarKind.local "vtop"]) globalBody68_41

def globalBody68_43 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "ujn")
  (Flapjack.Exp.var Flapjack.VarKind.local "vtop")) globalBody68_38 globalBody68_42

def globalBody68_44 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "again" (Flapjack.Exp.const 0#64)

def globalBody68_45 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "qhat"
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "qhat", Flapjack.Exp.const 1#64])

def globalBody68_46 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "rhat"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "rhat", Flapjack.Exp.var Flapjack.VarKind.local "vtop"])

def globalBody68_47 : Prog (BitVec 64) :=
.seq globalBody68_45 globalBody68_46

def globalBody68_48 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "again" (Flapjack.Exp.const 1#64)

def globalBody68_49 : Prog (BitVec 64) :=
.seq globalBody68_47 globalBody68_48

def globalBody68_50 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "rhat") (Flapjack.Exp.const 32#64),
      Flapjack.Exp.var Flapjack.VarKind.local "ujn2"])
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "qhat", Flapjack.Exp.var Flapjack.VarKind.local "vsec"])) globalBody68_49 globalBody68_15

def globalBody68_51 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "rhat") (Flapjack.Exp.const 4294967296#64)) globalBody68_50 globalBody68_15

def globalBody68_52 : Prog (BitVec 64) :=
.seq globalBody68_44 globalBody68_51

def globalBody68_53 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "again") (Flapjack.Exp.const 1#64)) globalBody68_52

def globalBody68_54 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i" (Flapjack.Exp.const 0#64)

def globalBody68_55 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "un",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.var Flapjack.VarKind.local "j"],
          Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 4294967295#64])

def globalBody68_56 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "k"
  (Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "p") (Flapjack.Exp.const 32#64),
      Flapjack.Exp.shift Flapjack.Shift.asr (Flapjack.Exp.var Flapjack.VarKind.local "t") (Flapjack.Exp.const 32#64)])

def globalBody68_57 : Prog (BitVec 64) :=
.seq globalBody68_55 globalBody68_56

def globalBody68_58 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody68_59 : Prog (BitVec 64) :=
.seq globalBody68_57 globalBody68_58

def globalBody68_60 : Prog (BitVec 64) :=
.dec ("t") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "un",
              Flapjack.Exp.panOp Flapjack.PanOp.mul
                [Flapjack.Exp.op Flapjack.BinOp.add
                    [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.var Flapjack.VarKind.local "j"],
                  Flapjack.Exp.const 8#64]]),
        Flapjack.Exp.var Flapjack.VarKind.local "k"],
    Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 4294967295#64]]) globalBody68_59

def globalBody68_61 : Prog (BitVec 64) :=
.dec ("p") (Flapjack.Shape.one) (Flapjack.Exp.panOp Flapjack.PanOp.mul
  [Flapjack.Exp.var Flapjack.VarKind.local "qhat",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "vn",
          Flapjack.Exp.panOp Flapjack.PanOp.mul
            [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]])]) globalBody68_60

def globalBody68_62 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) globalBody68_61

def globalBody68_63 : Prog (BitVec 64) :=
.seq globalBody68_54 globalBody68_62

def globalBody68_64 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "q",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "qhat", Flapjack.Exp.const 1#64])

def globalBody68_65 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "k" (Flapjack.Exp.const 0#64)

def globalBody68_66 : Prog (BitVec 64) :=
.seq globalBody68_64 globalBody68_65

def globalBody68_67 : Prog (BitVec 64) :=
.seq globalBody68_66 globalBody68_54

def globalBody68_68 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "un",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.var Flapjack.VarKind.local "j"],
          Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "t2", Flapjack.Exp.const 4294967295#64])

def globalBody68_69 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "k"
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "t2") (Flapjack.Exp.const 32#64))

def globalBody68_70 : Prog (BitVec 64) :=
.seq globalBody68_68 globalBody68_69

def globalBody68_71 : Prog (BitVec 64) :=
.seq globalBody68_70 globalBody68_58

def globalBody68_72 : Prog (BitVec 64) :=
.dec ("t2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "un",
          Flapjack.Exp.panOp Flapjack.PanOp.mul
            [Flapjack.Exp.op Flapjack.BinOp.add
                [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.var Flapjack.VarKind.local "j"],
              Flapjack.Exp.const 8#64]]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "vn",
          Flapjack.Exp.panOp Flapjack.PanOp.mul
            [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]]),
    Flapjack.Exp.var Flapjack.VarKind.local "k"]) globalBody68_71

def globalBody68_73 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) globalBody68_72

def globalBody68_74 : Prog (BitVec 64) :=
.seq globalBody68_67 globalBody68_73

def globalBody68_75 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "un",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.var Flapjack.VarKind.local "n"],
          Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "tt", Flapjack.Exp.var Flapjack.VarKind.local "k"],
      Flapjack.Exp.const 4294967295#64])

def globalBody68_76 : Prog (BitVec 64) :=
.seq globalBody68_74 globalBody68_75

def globalBody68_77 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "q",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.var Flapjack.VarKind.local "qhat")

def globalBody68_78 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "un",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.var Flapjack.VarKind.local "n"],
          Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.var Flapjack.VarKind.local "tt")

def globalBody68_79 : Prog (BitVec 64) :=
.seq globalBody68_77 globalBody68_78

def globalBody68_80 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "tt") (Flapjack.Exp.const 0#64)) globalBody68_76 globalBody68_79

def globalBody68_81 : Prog (BitVec 64) :=
.dec ("tt") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "ujn", Flapjack.Exp.var Flapjack.VarKind.local "k"]) globalBody68_80

def globalBody68_82 : Prog (BitVec 64) :=
.seq globalBody68_63 globalBody68_81

def globalBody68_83 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody68_82

def globalBody68_84 : Prog (BitVec 64) :=
.seq globalBody68_53 globalBody68_83

def globalBody68_85 : Prog (BitVec 64) :=
.dec ("again") (Flapjack.Shape.one) (Flapjack.Exp.const 1#64) globalBody68_84

def globalBody68_86 : Prog (BitVec 64) :=
.seq globalBody68_43 globalBody68_85

def globalBody68_87 : Prog (BitVec 64) :=
.dec ("rhat") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody68_86

def globalBody68_88 : Prog (BitVec 64) :=
.dec ("qhat") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody68_87

def globalBody68_89 : Prog (BitVec 64) :=
.dec ("ujn2") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "un",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.sub
            [Flapjack.Exp.op Flapjack.BinOp.add
                [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.var Flapjack.VarKind.local "n"],
              Flapjack.Exp.const 2#64],
          Flapjack.Exp.const 8#64]])) globalBody68_88

def globalBody68_90 : Prog (BitVec 64) :=
.dec ("ujn1") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "un",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.sub
            [Flapjack.Exp.op Flapjack.BinOp.add
                [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.var Flapjack.VarKind.local "n"],
              Flapjack.Exp.const 1#64],
          Flapjack.Exp.const 8#64]])) globalBody68_89

def globalBody68_91 : Prog (BitVec 64) :=
.dec ("ujn") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "un",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.var Flapjack.VarKind.local "n"],
          Flapjack.Exp.const 8#64]])) globalBody68_90

def globalBody68_92 : Prog (BitVec 64) :=
.seq globalBody68_1 globalBody68_91

def globalBody68_93 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "j")) globalBody68_92

def globalBody68_94 : Prog (BitVec 64) :=
.seq globalBody68_35 globalBody68_93

def globalBody68_95 : Prog (BitVec 64) :=
.seq globalBody68_94 globalBody68_35

def globalBody68_96 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "q",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.const 0#64)

def globalBody68_97 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "j"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 1#64])

def globalBody68_98 : Prog (BitVec 64) :=
.seq globalBody68_96 globalBody68_97

def globalBody68_99 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j")
  (Flapjack.Exp.var Flapjack.VarKind.local "m")) globalBody68_98

def globalBody68_100 : Prog (BitVec 64) :=
.seq globalBody68_95 globalBody68_99

def globalBody68_101 : Prog (BitVec 64) :=
.seq globalBody68_100 globalBody68_54

def globalBody68_102 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "r",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.shift Flapjack.Shift.lsr
        (Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "un",
              Flapjack.Exp.panOp Flapjack.PanOp.mul
                [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]]))
        (Flapjack.Exp.var Flapjack.VarKind.local "s"),
      Flapjack.Exp.op Flapjack.BinOp.and
        [Flapjack.Exp.shift Flapjack.Shift.lsl
            (Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.add
                [Flapjack.Exp.var Flapjack.VarKind.local "un",
                  Flapjack.Exp.panOp Flapjack.PanOp.mul
                    [Flapjack.Exp.op Flapjack.BinOp.add
                        [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64],
                      Flapjack.Exp.const 8#64]]))
            (Flapjack.Exp.op Flapjack.BinOp.sub
              [Flapjack.Exp.const 32#64, Flapjack.Exp.var Flapjack.VarKind.local "s"]),
          Flapjack.Exp.const 4294967295#64]])

def globalBody68_103 : Prog (BitVec 64) :=
.seq globalBody68_102 globalBody68_58

def globalBody68_104 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) globalBody68_103

def globalBody68_105 : Prog (BitVec 64) :=
.seq globalBody68_101 globalBody68_104

def globalBody68_106 : Prog (BitVec 64) :=
.seq globalBody68_105 globalBody68_11

def globalBody68_107 : Prog (BitVec 64) :=
.dec ("vsec") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "vn",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 2#64],
          Flapjack.Exp.const 8#64]])) globalBody68_106

def globalBody68_108 : Prog (BitVec 64) :=
.dec ("vtop") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "vn",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 1#64],
          Flapjack.Exp.const 8#64]])) globalBody68_107

def globalBody68_109 : Prog (BitVec 64) :=
.seq globalBody68_34 globalBody68_108

def globalBody68_110 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.one) ("nlz32") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "v",
        Flapjack.Exp.panOp Flapjack.PanOp.mul
          [Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 1#64],
            Flapjack.Exp.const 8#64]])]) globalBody68_109

def globalBody68_111 : Prog (BitVec 64) :=
.dec ("vn") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 40#64]),
    Flapjack.Exp.const 144#64]) globalBody68_110

def globalBody68_112 : Prog (BitVec 64) :=
.dec ("un") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 40#64]),
    Flapjack.Exp.const 0#64]) globalBody68_111

def globalBody68_113 : Prog (BitVec 64) :=
.seq globalBody68_16 globalBody68_112

def globalBody68_114 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody68_113

def globalBody68_115 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody68_114

def globalData68 : Decl (BitVec 64) :=
.function { name := "divmnu", inline := false, exported := false, params := [("q", Flapjack.Shape.one), ("r", Flapjack.Shape.one), ("u", Flapjack.Shape.one), ("m", Flapjack.Shape.one),
  ("v", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := globalBody68_115, returnShape := (Flapjack.Shape.one) }
def globalOutput68 := Pancake.PanLang.declToHOL globalData68
end InitECandidate.Proofs.FrontendStages.Declarations
