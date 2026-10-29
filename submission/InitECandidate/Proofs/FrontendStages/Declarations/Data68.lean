import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify52
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body68_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "j" (Flapjack.Exp.var Flapjack.VarKind.local "m")

def body68_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "j"
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 1#64])

def body68_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "q",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "qr"))

def body68_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "k" (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "qr"))

def body68_4 : Prog (BitVec 64) :=
.seq body68_2 body68_3

def body68_5 : Prog (BitVec 64) :=
.decCall ("qr") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("div64by32") ([Flapjack.Exp.var Flapjack.VarKind.local "k",
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "u",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 8#64]]),
  Flapjack.Exp.var Flapjack.VarKind.local "d"]) body68_4

def body68_6 : Prog (BitVec 64) :=
.seq body68_1 body68_5

def body68_7 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "j")) body68_6

def body68_8 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "r") (Flapjack.Exp.var Flapjack.VarKind.local "k")

def body68_9 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body68_10 : Prog (BitVec 64) :=
.seq body68_8 body68_9

def body68_11 : Prog (BitVec 64) :=
.seq body68_7 body68_10

def body68_12 : Prog (BitVec 64) :=
.seq body68_0 body68_11

def body68_13 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body68_12

def body68_14 : Prog (BitVec 64) :=
.dec ("d") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "v")) body68_13

def body68_15 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body68_16 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 1#64)) body68_14 body68_15

def body68_17 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 1#64])

def body68_18 : Prog (BitVec 64) :=
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

def body68_19 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body68_20 : Prog (BitVec 64) :=
.seq body68_18 body68_19

def body68_21 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "i")) body68_20

def body68_22 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "vn")
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.shift Flapjack.Shift.lsl
        (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "v"))
        (Flapjack.Exp.var Flapjack.VarKind.local "s"),
      Flapjack.Exp.const 4294967295#64])

def body68_23 : Prog (BitVec 64) :=
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

def body68_24 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 1#64])

def body68_25 : Prog (BitVec 64) :=
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

def body68_26 : Prog (BitVec 64) :=
.seq body68_25 body68_19

def body68_27 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "i")) body68_26

def body68_28 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "un")
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.shift Flapjack.Shift.lsl
        (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "u"))
        (Flapjack.Exp.var Flapjack.VarKind.local "s"),
      Flapjack.Exp.const 4294967295#64])

def body68_29 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "j"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.op Flapjack.BinOp.sub
        [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.var Flapjack.VarKind.local "n"],
      Flapjack.Exp.const 1#64])

def body68_30 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "qhat" (Flapjack.Exp.const 4294967295#64)

def body68_31 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "rhat"
  (Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.op Flapjack.BinOp.or
        [Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "ujn")
            (Flapjack.Exp.const 32#64),
          Flapjack.Exp.var Flapjack.VarKind.local "ujn1"],
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.var Flapjack.VarKind.local "qhat", Flapjack.Exp.var Flapjack.VarKind.local "vtop"]])

def body68_32 : Prog (BitVec 64) :=
.seq body68_30 body68_31

def body68_33 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "qhat"
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "qr"))

def body68_34 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "rhat"
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "qr"))

def body68_35 : Prog (BitVec 64) :=
.seq body68_33 body68_34

def body68_36 : Prog (BitVec 64) :=
.decCall ("qr") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("div64by32") ([Flapjack.Exp.var Flapjack.VarKind.local "ujn", Flapjack.Exp.var Flapjack.VarKind.local "ujn1",
  Flapjack.Exp.var Flapjack.VarKind.local "vtop"]) body68_35

def body68_37 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "ujn")
  (Flapjack.Exp.var Flapjack.VarKind.local "vtop")) body68_32 body68_36

def body68_38 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "again" (Flapjack.Exp.const 0#64)

def body68_39 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "qhat"
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "qhat", Flapjack.Exp.const 1#64])

def body68_40 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "rhat"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "rhat", Flapjack.Exp.var Flapjack.VarKind.local "vtop"])

def body68_41 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "again" (Flapjack.Exp.const 1#64)

def body68_42 : Prog (BitVec 64) :=
.seq body68_40 body68_41

def body68_43 : Prog (BitVec 64) :=
.seq body68_39 body68_42

def body68_44 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "rhat") (Flapjack.Exp.const 32#64),
      Flapjack.Exp.var Flapjack.VarKind.local "ujn2"])
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "qhat", Flapjack.Exp.var Flapjack.VarKind.local "vsec"])) body68_43 body68_15

def body68_45 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "rhat") (Flapjack.Exp.const 4294967296#64)) body68_44 body68_15

def body68_46 : Prog (BitVec 64) :=
.seq body68_38 body68_45

def body68_47 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "again") (Flapjack.Exp.const 1#64)) body68_46

def body68_48 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i" (Flapjack.Exp.const 0#64)

def body68_49 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "un",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.var Flapjack.VarKind.local "j"],
          Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 4294967295#64])

def body68_50 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "k"
  (Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "p") (Flapjack.Exp.const 32#64),
      Flapjack.Exp.shift Flapjack.Shift.asr (Flapjack.Exp.var Flapjack.VarKind.local "t") (Flapjack.Exp.const 32#64)])

def body68_51 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body68_52 : Prog (BitVec 64) :=
.seq body68_50 body68_51

def body68_53 : Prog (BitVec 64) :=
.seq body68_49 body68_52

def body68_54 : Prog (BitVec 64) :=
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
    Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 4294967295#64]]) body68_53

def body68_55 : Prog (BitVec 64) :=
.dec ("p") (Flapjack.Shape.one) (Flapjack.Exp.panOp Flapjack.PanOp.mul
  [Flapjack.Exp.var Flapjack.VarKind.local "qhat",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "vn",
          Flapjack.Exp.panOp Flapjack.PanOp.mul
            [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]])]) body68_54

def body68_56 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body68_55

def body68_57 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "q",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "qhat", Flapjack.Exp.const 1#64])

def body68_58 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "k" (Flapjack.Exp.const 0#64)

def body68_59 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "un",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.var Flapjack.VarKind.local "j"],
          Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "t2", Flapjack.Exp.const 4294967295#64])

def body68_60 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "k"
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "t2") (Flapjack.Exp.const 32#64))

def body68_61 : Prog (BitVec 64) :=
.seq body68_60 body68_51

def body68_62 : Prog (BitVec 64) :=
.seq body68_59 body68_61

def body68_63 : Prog (BitVec 64) :=
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
    Flapjack.Exp.var Flapjack.VarKind.local "k"]) body68_62

def body68_64 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body68_63

def body68_65 : Prog (BitVec 64) :=
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

def body68_66 : Prog (BitVec 64) :=
.seq body68_64 body68_65

def body68_67 : Prog (BitVec 64) :=
.seq body68_48 body68_66

def body68_68 : Prog (BitVec 64) :=
.seq body68_58 body68_67

def body68_69 : Prog (BitVec 64) :=
.seq body68_57 body68_68

def body68_70 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "q",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.var Flapjack.VarKind.local "qhat")

def body68_71 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "un",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.var Flapjack.VarKind.local "n"],
          Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.var Flapjack.VarKind.local "tt")

def body68_72 : Prog (BitVec 64) :=
.seq body68_70 body68_71

def body68_73 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "tt") (Flapjack.Exp.const 0#64)) body68_69 body68_72

def body68_74 : Prog (BitVec 64) :=
.dec ("tt") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "ujn", Flapjack.Exp.var Flapjack.VarKind.local "k"]) body68_73

def body68_75 : Prog (BitVec 64) :=
.seq body68_56 body68_74

def body68_76 : Prog (BitVec 64) :=
.seq body68_48 body68_75

def body68_77 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body68_76

def body68_78 : Prog (BitVec 64) :=
.seq body68_47 body68_77

def body68_79 : Prog (BitVec 64) :=
.dec ("again") (Flapjack.Shape.one) (Flapjack.Exp.const 1#64) body68_78

def body68_80 : Prog (BitVec 64) :=
.seq body68_37 body68_79

def body68_81 : Prog (BitVec 64) :=
.dec ("rhat") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body68_80

def body68_82 : Prog (BitVec 64) :=
.dec ("qhat") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body68_81

def body68_83 : Prog (BitVec 64) :=
.dec ("ujn2") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "un",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.sub
            [Flapjack.Exp.op Flapjack.BinOp.add
                [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.var Flapjack.VarKind.local "n"],
              Flapjack.Exp.const 2#64],
          Flapjack.Exp.const 8#64]])) body68_82

def body68_84 : Prog (BitVec 64) :=
.dec ("ujn1") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "un",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.sub
            [Flapjack.Exp.op Flapjack.BinOp.add
                [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.var Flapjack.VarKind.local "n"],
              Flapjack.Exp.const 1#64],
          Flapjack.Exp.const 8#64]])) body68_83

def body68_85 : Prog (BitVec 64) :=
.dec ("ujn") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "un",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.var Flapjack.VarKind.local "n"],
          Flapjack.Exp.const 8#64]])) body68_84

def body68_86 : Prog (BitVec 64) :=
.seq body68_1 body68_85

def body68_87 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "j")) body68_86

def body68_88 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "q",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.const 0#64)

def body68_89 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "j"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 1#64])

def body68_90 : Prog (BitVec 64) :=
.seq body68_88 body68_89

def body68_91 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j")
  (Flapjack.Exp.var Flapjack.VarKind.local "m")) body68_90

def body68_92 : Prog (BitVec 64) :=
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

def body68_93 : Prog (BitVec 64) :=
.seq body68_92 body68_51

def body68_94 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body68_93

def body68_95 : Prog (BitVec 64) :=
.seq body68_94 body68_9

def body68_96 : Prog (BitVec 64) :=
.seq body68_48 body68_95

def body68_97 : Prog (BitVec 64) :=
.seq body68_91 body68_96

def body68_98 : Prog (BitVec 64) :=
.seq body68_29 body68_97

def body68_99 : Prog (BitVec 64) :=
.seq body68_87 body68_98

def body68_100 : Prog (BitVec 64) :=
.seq body68_29 body68_99

def body68_101 : Prog (BitVec 64) :=
.dec ("vsec") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "vn",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 2#64],
          Flapjack.Exp.const 8#64]])) body68_100

def body68_102 : Prog (BitVec 64) :=
.dec ("vtop") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "vn",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 1#64],
          Flapjack.Exp.const 8#64]])) body68_101

def body68_103 : Prog (BitVec 64) :=
.seq body68_28 body68_102

def body68_104 : Prog (BitVec 64) :=
.seq body68_27 body68_103

def body68_105 : Prog (BitVec 64) :=
.seq body68_24 body68_104

def body68_106 : Prog (BitVec 64) :=
.seq body68_23 body68_105

def body68_107 : Prog (BitVec 64) :=
.seq body68_22 body68_106

def body68_108 : Prog (BitVec 64) :=
.seq body68_21 body68_107

def body68_109 : Prog (BitVec 64) :=
.seq body68_17 body68_108

def body68_110 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.one) ("nlz32") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "v",
        Flapjack.Exp.panOp Flapjack.PanOp.mul
          [Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 1#64],
            Flapjack.Exp.const 8#64]])]) body68_109

def body68_111 : Prog (BitVec 64) :=
.dec ("vn") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "u256_ws", Flapjack.Exp.const 144#64]) body68_110

def body68_112 : Prog (BitVec 64) :=
.dec ("un") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "u256_ws", Flapjack.Exp.const 0#64]) body68_111

def body68_113 : Prog (BitVec 64) :=
.seq body68_16 body68_112

def body68_114 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body68_113

def body68_115 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body68_114

def body68_116 : Prog (BitVec 64) :=
.seq body68_0 body68_7

def body68_117 : Prog (BitVec 64) :=
.seq body68_116 body68_8

def body68_118 : Prog (BitVec 64) :=
.seq body68_117 body68_9

def body68_119 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body68_118

def body68_120 : Prog (BitVec 64) :=
.dec ("d") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "v")) body68_119

def body68_121 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 1#64)) body68_120 body68_15

def body68_122 : Prog (BitVec 64) :=
.seq body68_17 body68_21

def body68_123 : Prog (BitVec 64) :=
.seq body68_122 body68_22

def body68_124 : Prog (BitVec 64) :=
.seq body68_123 body68_23

def body68_125 : Prog (BitVec 64) :=
.seq body68_124 body68_24

def body68_126 : Prog (BitVec 64) :=
.seq body68_125 body68_27

def body68_127 : Prog (BitVec 64) :=
.seq body68_126 body68_28

def body68_128 : Prog (BitVec 64) :=
.seq body68_39 body68_40

def body68_129 : Prog (BitVec 64) :=
.seq body68_128 body68_41

def body68_130 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "rhat") (Flapjack.Exp.const 32#64),
      Flapjack.Exp.var Flapjack.VarKind.local "ujn2"])
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "qhat", Flapjack.Exp.var Flapjack.VarKind.local "vsec"])) body68_129 body68_15

def body68_131 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "rhat") (Flapjack.Exp.const 4294967296#64)) body68_130 body68_15

def body68_132 : Prog (BitVec 64) :=
.seq body68_38 body68_131

def body68_133 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "again") (Flapjack.Exp.const 1#64)) body68_132

def body68_134 : Prog (BitVec 64) :=
.seq body68_49 body68_50

def body68_135 : Prog (BitVec 64) :=
.seq body68_134 body68_51

def body68_136 : Prog (BitVec 64) :=
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
    Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 4294967295#64]]) body68_135

def body68_137 : Prog (BitVec 64) :=
.dec ("p") (Flapjack.Shape.one) (Flapjack.Exp.panOp Flapjack.PanOp.mul
  [Flapjack.Exp.var Flapjack.VarKind.local "qhat",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "vn",
          Flapjack.Exp.panOp Flapjack.PanOp.mul
            [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]])]) body68_136

def body68_138 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body68_137

def body68_139 : Prog (BitVec 64) :=
.seq body68_48 body68_138

def body68_140 : Prog (BitVec 64) :=
.seq body68_57 body68_58

def body68_141 : Prog (BitVec 64) :=
.seq body68_140 body68_48

def body68_142 : Prog (BitVec 64) :=
.seq body68_59 body68_60

def body68_143 : Prog (BitVec 64) :=
.seq body68_142 body68_51

def body68_144 : Prog (BitVec 64) :=
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
    Flapjack.Exp.var Flapjack.VarKind.local "k"]) body68_143

def body68_145 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body68_144

def body68_146 : Prog (BitVec 64) :=
.seq body68_141 body68_145

def body68_147 : Prog (BitVec 64) :=
.seq body68_146 body68_65

def body68_148 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "tt") (Flapjack.Exp.const 0#64)) body68_147 body68_72

def body68_149 : Prog (BitVec 64) :=
.dec ("tt") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "ujn", Flapjack.Exp.var Flapjack.VarKind.local "k"]) body68_148

def body68_150 : Prog (BitVec 64) :=
.seq body68_139 body68_149

def body68_151 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body68_150

def body68_152 : Prog (BitVec 64) :=
.seq body68_133 body68_151

def body68_153 : Prog (BitVec 64) :=
.dec ("again") (Flapjack.Shape.one) (Flapjack.Exp.const 1#64) body68_152

def body68_154 : Prog (BitVec 64) :=
.seq body68_37 body68_153

def body68_155 : Prog (BitVec 64) :=
.dec ("rhat") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body68_154

def body68_156 : Prog (BitVec 64) :=
.dec ("qhat") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body68_155

def body68_157 : Prog (BitVec 64) :=
.dec ("ujn2") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "un",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.sub
            [Flapjack.Exp.op Flapjack.BinOp.add
                [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.var Flapjack.VarKind.local "n"],
              Flapjack.Exp.const 2#64],
          Flapjack.Exp.const 8#64]])) body68_156

def body68_158 : Prog (BitVec 64) :=
.dec ("ujn1") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "un",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.sub
            [Flapjack.Exp.op Flapjack.BinOp.add
                [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.var Flapjack.VarKind.local "n"],
              Flapjack.Exp.const 1#64],
          Flapjack.Exp.const 8#64]])) body68_157

def body68_159 : Prog (BitVec 64) :=
.dec ("ujn") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "un",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.var Flapjack.VarKind.local "n"],
          Flapjack.Exp.const 8#64]])) body68_158

def body68_160 : Prog (BitVec 64) :=
.seq body68_1 body68_159

def body68_161 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "j")) body68_160

def body68_162 : Prog (BitVec 64) :=
.seq body68_29 body68_161

def body68_163 : Prog (BitVec 64) :=
.seq body68_162 body68_29

def body68_164 : Prog (BitVec 64) :=
.seq body68_163 body68_91

def body68_165 : Prog (BitVec 64) :=
.seq body68_164 body68_48

def body68_166 : Prog (BitVec 64) :=
.seq body68_165 body68_94

def body68_167 : Prog (BitVec 64) :=
.seq body68_166 body68_9

def body68_168 : Prog (BitVec 64) :=
.dec ("vsec") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "vn",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 2#64],
          Flapjack.Exp.const 8#64]])) body68_167

def body68_169 : Prog (BitVec 64) :=
.dec ("vtop") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "vn",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 1#64],
          Flapjack.Exp.const 8#64]])) body68_168

def body68_170 : Prog (BitVec 64) :=
.seq body68_127 body68_169

def body68_171 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.one) ("nlz32") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "v",
        Flapjack.Exp.panOp Flapjack.PanOp.mul
          [Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 1#64],
            Flapjack.Exp.const 8#64]])]) body68_170

def body68_172 : Prog (BitVec 64) :=
.dec ("vn") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "u256_ws", Flapjack.Exp.const 144#64]) body68_171

def body68_173 : Prog (BitVec 64) :=
.dec ("un") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "u256_ws", Flapjack.Exp.const 0#64]) body68_172

def body68_174 : Prog (BitVec 64) :=
.seq body68_121 body68_173

def body68_175 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body68_174

def body68_176 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body68_175

def originalData68 : Decl (BitVec 64) :=
.function { name := "divmnu", inline := false, exported := false, params := [("q", Flapjack.Shape.one), ("r", Flapjack.Shape.one), ("u", Flapjack.Shape.one), ("m", Flapjack.Shape.one),
  ("v", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body68_115, returnShape := (Flapjack.Shape.one) }
def simplifiedData68 : Decl (BitVec 64) :=
.function { name := "divmnu", inline := false, exported := false, params := [("q", Flapjack.Shape.one), ("r", Flapjack.Shape.one), ("u", Flapjack.Shape.one), ("m", Flapjack.Shape.one),
  ("v", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body68_176, returnShape := (Flapjack.Shape.one) }
def original68 := Pancake.PanLang.declToHOL originalData68
def simplified68 := Pancake.PanLang.declToHOL simplifiedData68
end InitECandidate.Proofs.FrontendStages.Declarations
