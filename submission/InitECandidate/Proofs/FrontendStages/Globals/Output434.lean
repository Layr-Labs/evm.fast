import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data434
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate418
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody434_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "add_storage_read"
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "s"),
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "s"), Flapjack.Exp.const 20#64]]

def globalBody434_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody434_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "s"))
  (Flapjack.Exp.const 0#64)) globalBody434_0 globalBody434_1

def globalBody434_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody434_4 : Prog (BitVec 64) :=
.seq globalBody434_2 globalBody434_3

def globalBody434_5 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_item") ([Flapjack.Exp.var Flapjack.VarKind.local "sr", Flapjack.Exp.var Flapjack.VarKind.local "i"]) globalBody434_4

def globalBody434_6 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "cap")) globalBody434_5

def globalBody434_7 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "cap"
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ar", Flapjack.Exp.const 24#64]))

def globalBody434_8 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i" (Flapjack.Exp.const 0#64)

def globalBody434_9 : Prog (BitVec 64) :=
.seq globalBody434_7 globalBody434_8

def globalBody434_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "add_touched_account"
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "s2")]

def globalBody434_11 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "s2"))
  (Flapjack.Exp.const 0#64)) globalBody434_10 globalBody434_1

def globalBody434_12 : Prog (BitVec 64) :=
.seq globalBody434_11 globalBody434_3

def globalBody434_13 : Prog (BitVec 64) :=
.decCall ("s2") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_item") ([Flapjack.Exp.var Flapjack.VarKind.local "ar", Flapjack.Exp.var Flapjack.VarKind.local "i"]) globalBody434_12

def globalBody434_14 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "cap")) globalBody434_13

def globalBody434_15 : Prog (BitVec 64) :=
.seq globalBody434_9 globalBody434_14

def globalBody434_16 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "sort_elems"
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "addrs"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "addrs"), Flapjack.Exp.const 24#64,
    Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "tmp"]

def globalBody434_17 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "total"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "total", Flapjack.Exp.const 128#64,
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.load Flapjack.Shape.one
                  (Flapjack.Exp.op Flapjack.BinOp.add
                    [Flapjack.Exp.var Flapjack.VarKind.local "ad", Flapjack.Exp.const 8#64]),
                Flapjack.Exp.const 24#64]),
          Flapjack.Exp.const 40#64]])

def globalBody434_18 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "total"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "total",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.load Flapjack.Shape.one
                  (Flapjack.Exp.op Flapjack.BinOp.add
                    [Flapjack.Exp.var Flapjack.VarKind.local "ad", Flapjack.Exp.const 0#64]),
                Flapjack.Exp.const 24#64]),
          Flapjack.Exp.const 96#64]])

def globalBody434_19 : Prog (BitVec 64) :=
.seq globalBody434_17 globalBody434_18

def globalBody434_20 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "total"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "total",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "e"), Flapjack.Exp.const 8#64]),
          Flapjack.Exp.const 48#64]])

def globalBody434_21 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "e"))
  (Flapjack.Exp.const 0#64)) globalBody434_20 globalBody434_1

def globalBody434_22 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "j"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 1#64])

def globalBody434_23 : Prog (BitVec 64) :=
.seq globalBody434_21 globalBody434_22

def globalBody434_24 : Prog (BitVec 64) :=
.decCall ("e") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_item") ([Flapjack.Exp.var Flapjack.VarKind.local "sc", Flapjack.Exp.var Flapjack.VarKind.local "j"]) globalBody434_23

def globalBody434_25 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "j")
  (Flapjack.Exp.var Flapjack.VarKind.local "scap")) globalBody434_24

def globalBody434_26 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "total"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "total",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.load Flapjack.Shape.one
                  (Flapjack.Exp.op Flapjack.BinOp.add
                    [Flapjack.Exp.var Flapjack.VarKind.local "ad", Flapjack.Exp.const 16#64]),
                Flapjack.Exp.const 8#64]),
          Flapjack.Exp.const 48#64]])

def globalBody434_27 : Prog (BitVec 64) :=
.seq globalBody434_25 globalBody434_26

def globalBody434_28 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "total"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "total",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.load Flapjack.Shape.one
                  (Flapjack.Exp.op Flapjack.BinOp.add
                    [Flapjack.Exp.var Flapjack.VarKind.local "ad", Flapjack.Exp.const 24#64]),
                Flapjack.Exp.const 8#64]),
          Flapjack.Exp.const 24#64]])

def globalBody434_29 : Prog (BitVec 64) :=
.seq globalBody434_27 globalBody434_28

def globalBody434_30 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "j" (Flapjack.Exp.const 0#64)

def globalBody434_31 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "total"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "total", Flapjack.Exp.const 32#64,
      Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "cp",
            Flapjack.Exp.panOp Flapjack.PanOp.mul
              [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 24#64],
            Flapjack.Exp.const 16#64])])

def globalBody434_32 : Prog (BitVec 64) :=
.seq globalBody434_31 globalBody434_22

def globalBody434_33 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "j")
  (Flapjack.Exp.var Flapjack.VarKind.local "cn")) globalBody434_32

def globalBody434_34 : Prog (BitVec 64) :=
.seq globalBody434_30 globalBody434_33

def globalBody434_35 : Prog (BitVec 64) :=
.seq globalBody434_34 globalBody434_3

def globalBody434_36 : Prog (BitVec 64) :=
.dec ("cp") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "cl", Flapjack.Exp.const 0#64])) globalBody434_35

def globalBody434_37 : Prog (BitVec 64) :=
.dec ("cn") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "cl", Flapjack.Exp.const 8#64])) globalBody434_36

def globalBody434_38 : Prog (BitVec 64) :=
.dec ("cl") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ad", Flapjack.Exp.const 32#64])) globalBody434_37

def globalBody434_39 : Prog (BitVec 64) :=
.seq globalBody434_29 globalBody434_38

def globalBody434_40 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody434_39

def globalBody434_41 : Prog (BitVec 64) :=
.dec ("scap") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "sc", Flapjack.Exp.const 24#64])) globalBody434_40

def globalBody434_42 : Prog (BitVec 64) :=
.dec ("sc") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ad", Flapjack.Exp.const 0#64])) globalBody434_41

def globalBody434_43 : Prog (BitVec 64) :=
.seq globalBody434_19 globalBody434_42

def globalBody434_44 : Prog (BitVec 64) :=
.dec ("ad") (Flapjack.Shape.one) (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "m")) globalBody434_43

def globalBody434_45 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_get") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 216#64]),
  Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "addrs"),
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 24#64]]]) globalBody434_44

def globalBody434_46 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "addrs"))) globalBody434_45

def globalBody434_47 : Prog (BitVec 64) :=
.seq globalBody434_8 globalBody434_46

def globalBody434_48 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "w"])

def globalBody434_49 : Prog (BitVec 64) :=
.seq globalBody434_48 globalBody434_3

def globalBody434_50 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.one) ("bal_encode_account") ([Flapjack.Exp.var Flapjack.VarKind.local "p",
  Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "addrs"),
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 24#64]],
  Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "m2"), Flapjack.Exp.var Flapjack.VarKind.local "tmp"]) globalBody434_49

def globalBody434_51 : Prog (BitVec 64) :=
.decCall ("m2") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_get") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 216#64]),
  Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "addrs"),
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 24#64]]]) globalBody434_50

def globalBody434_52 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "addrs"))) globalBody434_51

def globalBody434_53 : Prog (BitVec 64) :=
.seq globalBody434_8 globalBody434_52

def globalBody434_54 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "rlp_encode_list_header"
  [Flapjack.Exp.var Flapjack.VarKind.local "start", Flapjack.Exp.var Flapjack.VarKind.local "payload"]

def globalBody434_55 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.var Flapjack.VarKind.local "start",
      Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "hl", Flapjack.Exp.var Flapjack.VarKind.local "payload"]])

def globalBody434_56 : Prog (BitVec 64) :=
.seq globalBody434_54 globalBody434_55

def globalBody434_57 : Prog (BitVec 64) :=
.dec ("start") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "buf", Flapjack.Exp.const 9#64],
    Flapjack.Exp.var Flapjack.VarKind.local "hl"]) globalBody434_56

def globalBody434_58 : Prog (BitVec 64) :=
.decCall ("hl") (Flapjack.Shape.one) ("rlp_list_header_len") ([Flapjack.Exp.var Flapjack.VarKind.local "payload"]) globalBody434_57

def globalBody434_59 : Prog (BitVec 64) :=
.dec ("payload") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "buf", Flapjack.Exp.const 9#64]]) globalBody434_58

def globalBody434_60 : Prog (BitVec 64) :=
.seq globalBody434_53 globalBody434_59

def globalBody434_61 : Prog (BitVec 64) :=
.dec ("p") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "buf", Flapjack.Exp.const 9#64]) globalBody434_60

def globalBody434_62 : Prog (BitVec 64) :=
.decCall ("buf") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "total", Flapjack.Exp.const 64#64]]) globalBody434_61

def globalBody434_63 : Prog (BitVec 64) :=
.seq globalBody434_47 globalBody434_62

def globalBody434_64 : Prog (BitVec 64) :=
.dec ("total") (Flapjack.Shape.one) (Flapjack.Exp.const 1024#64) globalBody434_63

def globalBody434_65 : Prog (BitVec 64) :=
.seq globalBody434_16 globalBody434_64

def globalBody434_66 : Prog (BitVec 64) :=
.decCall ("addrs") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_keys") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 216#64])]) globalBody434_65

def globalBody434_67 : Prog (BitVec 64) :=
.decCall ("tmp") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 64#64]) globalBody434_66

def globalBody434_68 : Prog (BitVec 64) :=
.seq globalBody434_15 globalBody434_67

def globalBody434_69 : Prog (BitVec 64) :=
.dec ("ar") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 176#64]),
      Flapjack.Exp.const 8#64])) globalBody434_68

def globalBody434_70 : Prog (BitVec 64) :=
.seq globalBody434_6 globalBody434_69

def globalBody434_71 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody434_70

def globalBody434_72 : Prog (BitVec 64) :=
.dec ("cap") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "sr", Flapjack.Exp.const 24#64])) globalBody434_71

def globalBody434_73 : Prog (BitVec 64) :=
.dec ("sr") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 176#64]),
      Flapjack.Exp.const 24#64])) globalBody434_72

def globalData434 : Decl (BitVec 64) :=
.function { name := "build_block_access_list_rlp", inline := false, exported := false, params := [], body := globalBody434_73, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput434 := Pancake.PanLang.declToHOL globalData434
end InitECandidate.Proofs.FrontendStages.Declarations
