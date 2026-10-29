import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify612
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body628_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "j" (Flapjack.Exp.var Flapjack.VarKind.local "m")

def body628_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "j"
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 1#64])

def body628_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "q",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "qr"))

def body628_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "k" (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "qr"))

def body628_4 : Prog (BitVec 64) :=
.seq body628_2 body628_3

def body628_5 : Prog (BitVec 64) :=
.decCall ("qr") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("div64by32") ([Flapjack.Exp.var Flapjack.VarKind.local "k",
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "u",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 8#64]]),
  Flapjack.Exp.var Flapjack.VarKind.local "d"]) body628_4

def body628_6 : Prog (BitVec 64) :=
.seq body628_1 body628_5

def body628_7 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "j")) body628_6

def body628_8 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "r") (Flapjack.Exp.var Flapjack.VarKind.local "k")

def body628_9 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body628_10 : Prog (BitVec 64) :=
.seq body628_8 body628_9

def body628_11 : Prog (BitVec 64) :=
.seq body628_7 body628_10

def body628_12 : Prog (BitVec 64) :=
.seq body628_0 body628_11

def body628_13 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body628_12

def body628_14 : Prog (BitVec 64) :=
.dec ("d") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "v")) body628_13

def body628_15 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body628_16 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 1#64)) body628_14 body628_15

def body628_17 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 1#64])

def body628_18 : Prog (BitVec 64) :=
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

def body628_19 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body628_20 : Prog (BitVec 64) :=
.seq body628_18 body628_19

def body628_21 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "i")) body628_20

def body628_22 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "vn")
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.shift Flapjack.Shift.lsl
        (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "v"))
        (Flapjack.Exp.var Flapjack.VarKind.local "s"),
      Flapjack.Exp.const 4294967295#64])

def body628_23 : Prog (BitVec 64) :=
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

def body628_24 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 1#64])

def body628_25 : Prog (BitVec 64) :=
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

def body628_26 : Prog (BitVec 64) :=
.seq body628_25 body628_19

def body628_27 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "i")) body628_26

def body628_28 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "un")
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.shift Flapjack.Shift.lsl
        (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "u"))
        (Flapjack.Exp.var Flapjack.VarKind.local "s"),
      Flapjack.Exp.const 4294967295#64])

def body628_29 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "j"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.op Flapjack.BinOp.sub
        [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.var Flapjack.VarKind.local "n"],
      Flapjack.Exp.const 1#64])

def body628_30 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "qhat" (Flapjack.Exp.const 4294967295#64)

def body628_31 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "rhat"
  (Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.op Flapjack.BinOp.or
        [Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "ujn")
            (Flapjack.Exp.const 32#64),
          Flapjack.Exp.var Flapjack.VarKind.local "ujn1"],
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.var Flapjack.VarKind.local "qhat", Flapjack.Exp.var Flapjack.VarKind.local "vtop"]])

def body628_32 : Prog (BitVec 64) :=
.seq body628_30 body628_31

def body628_33 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "qhat"
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "qr"))

def body628_34 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "rhat"
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "qr"))

def body628_35 : Prog (BitVec 64) :=
.seq body628_33 body628_34

def body628_36 : Prog (BitVec 64) :=
.decCall ("qr") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("div64by32") ([Flapjack.Exp.var Flapjack.VarKind.local "ujn", Flapjack.Exp.var Flapjack.VarKind.local "ujn1",
  Flapjack.Exp.var Flapjack.VarKind.local "vtop"]) body628_35

def body628_37 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "ujn")
  (Flapjack.Exp.var Flapjack.VarKind.local "vtop")) body628_32 body628_36

def body628_38 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "again" (Flapjack.Exp.const 0#64)

def body628_39 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "qhat"
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "qhat", Flapjack.Exp.const 1#64])

def body628_40 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "rhat"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "rhat", Flapjack.Exp.var Flapjack.VarKind.local "vtop"])

def body628_41 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "again" (Flapjack.Exp.const 1#64)

def body628_42 : Prog (BitVec 64) :=
.seq body628_40 body628_41

def body628_43 : Prog (BitVec 64) :=
.seq body628_39 body628_42

def body628_44 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "rhat") (Flapjack.Exp.const 32#64),
      Flapjack.Exp.var Flapjack.VarKind.local "ujn2"])
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "qhat", Flapjack.Exp.var Flapjack.VarKind.local "vsec"])) body628_43 body628_15

def body628_45 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "rhat") (Flapjack.Exp.const 4294967296#64)) body628_44 body628_15

def body628_46 : Prog (BitVec 64) :=
.seq body628_38 body628_45

def body628_47 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "again") (Flapjack.Exp.const 1#64)) body628_46

def body628_48 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i" (Flapjack.Exp.const 0#64)

def body628_49 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "un",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.var Flapjack.VarKind.local "j"],
          Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 4294967295#64])

def body628_50 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "k"
  (Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "p") (Flapjack.Exp.const 32#64),
      Flapjack.Exp.shift Flapjack.Shift.asr (Flapjack.Exp.var Flapjack.VarKind.local "t") (Flapjack.Exp.const 32#64)])

def body628_51 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body628_52 : Prog (BitVec 64) :=
.seq body628_50 body628_51

def body628_53 : Prog (BitVec 64) :=
.seq body628_49 body628_52

def body628_54 : Prog (BitVec 64) :=
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
    Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 4294967295#64]]) body628_53

def body628_55 : Prog (BitVec 64) :=
.dec ("p") (Flapjack.Shape.one) (Flapjack.Exp.panOp Flapjack.PanOp.mul
  [Flapjack.Exp.var Flapjack.VarKind.local "qhat",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "vn",
          Flapjack.Exp.panOp Flapjack.PanOp.mul
            [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]])]) body628_54

def body628_56 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body628_55

def body628_57 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "q",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "qhat", Flapjack.Exp.const 1#64])

def body628_58 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "k" (Flapjack.Exp.const 0#64)

def body628_59 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "un",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.var Flapjack.VarKind.local "j"],
          Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "t2", Flapjack.Exp.const 4294967295#64])

def body628_60 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "k"
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "t2") (Flapjack.Exp.const 32#64))

def body628_61 : Prog (BitVec 64) :=
.seq body628_60 body628_51

def body628_62 : Prog (BitVec 64) :=
.seq body628_59 body628_61

def body628_63 : Prog (BitVec 64) :=
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
    Flapjack.Exp.var Flapjack.VarKind.local "k"]) body628_62

def body628_64 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body628_63

def body628_65 : Prog (BitVec 64) :=
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

def body628_66 : Prog (BitVec 64) :=
.seq body628_64 body628_65

def body628_67 : Prog (BitVec 64) :=
.seq body628_48 body628_66

def body628_68 : Prog (BitVec 64) :=
.seq body628_58 body628_67

def body628_69 : Prog (BitVec 64) :=
.seq body628_57 body628_68

def body628_70 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "q",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.var Flapjack.VarKind.local "qhat")

def body628_71 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "un",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.var Flapjack.VarKind.local "n"],
          Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.var Flapjack.VarKind.local "tt")

def body628_72 : Prog (BitVec 64) :=
.seq body628_70 body628_71

def body628_73 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "tt") (Flapjack.Exp.const 0#64)) body628_69 body628_72

def body628_74 : Prog (BitVec 64) :=
.dec ("tt") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "ujn", Flapjack.Exp.var Flapjack.VarKind.local "k"]) body628_73

def body628_75 : Prog (BitVec 64) :=
.seq body628_56 body628_74

def body628_76 : Prog (BitVec 64) :=
.seq body628_48 body628_75

def body628_77 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body628_76

def body628_78 : Prog (BitVec 64) :=
.seq body628_47 body628_77

def body628_79 : Prog (BitVec 64) :=
.dec ("again") (Flapjack.Shape.one) (Flapjack.Exp.const 1#64) body628_78

def body628_80 : Prog (BitVec 64) :=
.seq body628_37 body628_79

def body628_81 : Prog (BitVec 64) :=
.dec ("rhat") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body628_80

def body628_82 : Prog (BitVec 64) :=
.dec ("qhat") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body628_81

def body628_83 : Prog (BitVec 64) :=
.dec ("ujn2") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "un",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.sub
            [Flapjack.Exp.op Flapjack.BinOp.add
                [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.var Flapjack.VarKind.local "n"],
              Flapjack.Exp.const 2#64],
          Flapjack.Exp.const 8#64]])) body628_82

def body628_84 : Prog (BitVec 64) :=
.dec ("ujn1") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "un",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.sub
            [Flapjack.Exp.op Flapjack.BinOp.add
                [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.var Flapjack.VarKind.local "n"],
              Flapjack.Exp.const 1#64],
          Flapjack.Exp.const 8#64]])) body628_83

def body628_85 : Prog (BitVec 64) :=
.dec ("ujn") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "un",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.var Flapjack.VarKind.local "n"],
          Flapjack.Exp.const 8#64]])) body628_84

def body628_86 : Prog (BitVec 64) :=
.seq body628_1 body628_85

def body628_87 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "j")) body628_86

def body628_88 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "q",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.const 0#64)

def body628_89 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "j"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 1#64])

def body628_90 : Prog (BitVec 64) :=
.seq body628_88 body628_89

def body628_91 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j")
  (Flapjack.Exp.var Flapjack.VarKind.local "m")) body628_90

def body628_92 : Prog (BitVec 64) :=
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

def body628_93 : Prog (BitVec 64) :=
.seq body628_92 body628_51

def body628_94 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body628_93

def body628_95 : Prog (BitVec 64) :=
.seq body628_94 body628_9

def body628_96 : Prog (BitVec 64) :=
.seq body628_48 body628_95

def body628_97 : Prog (BitVec 64) :=
.seq body628_91 body628_96

def body628_98 : Prog (BitVec 64) :=
.seq body628_29 body628_97

def body628_99 : Prog (BitVec 64) :=
.seq body628_87 body628_98

def body628_100 : Prog (BitVec 64) :=
.seq body628_29 body628_99

def body628_101 : Prog (BitVec 64) :=
.dec ("vsec") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "vn",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 2#64],
          Flapjack.Exp.const 8#64]])) body628_100

def body628_102 : Prog (BitVec 64) :=
.dec ("vtop") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "vn",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 1#64],
          Flapjack.Exp.const 8#64]])) body628_101

def body628_103 : Prog (BitVec 64) :=
.seq body628_28 body628_102

def body628_104 : Prog (BitVec 64) :=
.seq body628_27 body628_103

def body628_105 : Prog (BitVec 64) :=
.seq body628_24 body628_104

def body628_106 : Prog (BitVec 64) :=
.seq body628_23 body628_105

def body628_107 : Prog (BitVec 64) :=
.seq body628_22 body628_106

def body628_108 : Prog (BitVec 64) :=
.seq body628_21 body628_107

def body628_109 : Prog (BitVec 64) :=
.seq body628_17 body628_108

def body628_110 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.one) ("nlz32") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "v",
        Flapjack.Exp.panOp Flapjack.PanOp.mul
          [Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 1#64],
            Flapjack.Exp.const 8#64]])]) body628_109

def body628_111 : Prog (BitVec 64) :=
.seq body628_16 body628_110

def body628_112 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body628_111

def body628_113 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body628_112

def body628_114 : Prog (BitVec 64) :=
.seq body628_0 body628_7

def body628_115 : Prog (BitVec 64) :=
.seq body628_114 body628_8

def body628_116 : Prog (BitVec 64) :=
.seq body628_115 body628_9

def body628_117 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body628_116

def body628_118 : Prog (BitVec 64) :=
.dec ("d") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "v")) body628_117

def body628_119 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 1#64)) body628_118 body628_15

def body628_120 : Prog (BitVec 64) :=
.seq body628_17 body628_21

def body628_121 : Prog (BitVec 64) :=
.seq body628_120 body628_22

def body628_122 : Prog (BitVec 64) :=
.seq body628_121 body628_23

def body628_123 : Prog (BitVec 64) :=
.seq body628_122 body628_24

def body628_124 : Prog (BitVec 64) :=
.seq body628_123 body628_27

def body628_125 : Prog (BitVec 64) :=
.seq body628_124 body628_28

def body628_126 : Prog (BitVec 64) :=
.seq body628_39 body628_40

def body628_127 : Prog (BitVec 64) :=
.seq body628_126 body628_41

def body628_128 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "rhat") (Flapjack.Exp.const 32#64),
      Flapjack.Exp.var Flapjack.VarKind.local "ujn2"])
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "qhat", Flapjack.Exp.var Flapjack.VarKind.local "vsec"])) body628_127 body628_15

def body628_129 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "rhat") (Flapjack.Exp.const 4294967296#64)) body628_128 body628_15

def body628_130 : Prog (BitVec 64) :=
.seq body628_38 body628_129

def body628_131 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "again") (Flapjack.Exp.const 1#64)) body628_130

def body628_132 : Prog (BitVec 64) :=
.seq body628_49 body628_50

def body628_133 : Prog (BitVec 64) :=
.seq body628_132 body628_51

def body628_134 : Prog (BitVec 64) :=
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
    Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 4294967295#64]]) body628_133

def body628_135 : Prog (BitVec 64) :=
.dec ("p") (Flapjack.Shape.one) (Flapjack.Exp.panOp Flapjack.PanOp.mul
  [Flapjack.Exp.var Flapjack.VarKind.local "qhat",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "vn",
          Flapjack.Exp.panOp Flapjack.PanOp.mul
            [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]])]) body628_134

def body628_136 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body628_135

def body628_137 : Prog (BitVec 64) :=
.seq body628_48 body628_136

def body628_138 : Prog (BitVec 64) :=
.seq body628_57 body628_58

def body628_139 : Prog (BitVec 64) :=
.seq body628_138 body628_48

def body628_140 : Prog (BitVec 64) :=
.seq body628_59 body628_60

def body628_141 : Prog (BitVec 64) :=
.seq body628_140 body628_51

def body628_142 : Prog (BitVec 64) :=
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
    Flapjack.Exp.var Flapjack.VarKind.local "k"]) body628_141

def body628_143 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body628_142

def body628_144 : Prog (BitVec 64) :=
.seq body628_139 body628_143

def body628_145 : Prog (BitVec 64) :=
.seq body628_144 body628_65

def body628_146 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "tt") (Flapjack.Exp.const 0#64)) body628_145 body628_72

def body628_147 : Prog (BitVec 64) :=
.dec ("tt") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "ujn", Flapjack.Exp.var Flapjack.VarKind.local "k"]) body628_146

def body628_148 : Prog (BitVec 64) :=
.seq body628_137 body628_147

def body628_149 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body628_148

def body628_150 : Prog (BitVec 64) :=
.seq body628_131 body628_149

def body628_151 : Prog (BitVec 64) :=
.dec ("again") (Flapjack.Shape.one) (Flapjack.Exp.const 1#64) body628_150

def body628_152 : Prog (BitVec 64) :=
.seq body628_37 body628_151

def body628_153 : Prog (BitVec 64) :=
.dec ("rhat") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body628_152

def body628_154 : Prog (BitVec 64) :=
.dec ("qhat") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body628_153

def body628_155 : Prog (BitVec 64) :=
.dec ("ujn2") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "un",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.sub
            [Flapjack.Exp.op Flapjack.BinOp.add
                [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.var Flapjack.VarKind.local "n"],
              Flapjack.Exp.const 2#64],
          Flapjack.Exp.const 8#64]])) body628_154

def body628_156 : Prog (BitVec 64) :=
.dec ("ujn1") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "un",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.sub
            [Flapjack.Exp.op Flapjack.BinOp.add
                [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.var Flapjack.VarKind.local "n"],
              Flapjack.Exp.const 1#64],
          Flapjack.Exp.const 8#64]])) body628_155

def body628_157 : Prog (BitVec 64) :=
.dec ("ujn") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "un",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.var Flapjack.VarKind.local "n"],
          Flapjack.Exp.const 8#64]])) body628_156

def body628_158 : Prog (BitVec 64) :=
.seq body628_1 body628_157

def body628_159 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "j")) body628_158

def body628_160 : Prog (BitVec 64) :=
.seq body628_29 body628_159

def body628_161 : Prog (BitVec 64) :=
.seq body628_160 body628_29

def body628_162 : Prog (BitVec 64) :=
.seq body628_161 body628_91

def body628_163 : Prog (BitVec 64) :=
.seq body628_162 body628_48

def body628_164 : Prog (BitVec 64) :=
.seq body628_163 body628_94

def body628_165 : Prog (BitVec 64) :=
.seq body628_164 body628_9

def body628_166 : Prog (BitVec 64) :=
.dec ("vsec") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "vn",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 2#64],
          Flapjack.Exp.const 8#64]])) body628_165

def body628_167 : Prog (BitVec 64) :=
.dec ("vtop") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "vn",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 1#64],
          Flapjack.Exp.const 8#64]])) body628_166

def body628_168 : Prog (BitVec 64) :=
.seq body628_125 body628_167

def body628_169 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.one) ("nlz32") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "v",
        Flapjack.Exp.panOp Flapjack.PanOp.mul
          [Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 1#64],
            Flapjack.Exp.const 8#64]])]) body628_168

def body628_170 : Prog (BitVec 64) :=
.seq body628_119 body628_169

def body628_171 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body628_170

def body628_172 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body628_171

def originalData628 : Decl (BitVec 64) :=
.function { name := "bn_divmnu", inline := false, exported := false, params := [("q", Flapjack.Shape.one), ("r", Flapjack.Shape.one), ("u", Flapjack.Shape.one), ("m", Flapjack.Shape.one),
  ("v", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("un", Flapjack.Shape.one), ("vn", Flapjack.Shape.one)], body := body628_113, returnShape := (Flapjack.Shape.one) }
def simplifiedData628 : Decl (BitVec 64) :=
.function { name := "bn_divmnu", inline := false, exported := false, params := [("q", Flapjack.Shape.one), ("r", Flapjack.Shape.one), ("u", Flapjack.Shape.one), ("m", Flapjack.Shape.one),
  ("v", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("un", Flapjack.Shape.one), ("vn", Flapjack.Shape.one)], body := body628_172, returnShape := (Flapjack.Shape.one) }
def original628 := Pancake.PanLang.declToHOL originalData628
def simplified628 := Pancake.PanLang.declToHOL simplifiedData628
end InitECandidate.Proofs.FrontendStages.Declarations
