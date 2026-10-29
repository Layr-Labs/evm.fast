import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data230
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate212
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody230_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "w"])

def globalBody230_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_bytes"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 16#64]),
    Flapjack.Exp.const 32#64]

def globalBody230_2 : Prog (BitVec 64) :=
.seq globalBody230_0 globalBody230_1

def globalBody230_3 : Prog (BitVec 64) :=
.seq globalBody230_2 globalBody230_0

def globalBody230_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_bytes"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 24#64]),
    Flapjack.Exp.const 20#64]

def globalBody230_5 : Prog (BitVec 64) :=
.seq globalBody230_3 globalBody230_4

def globalBody230_6 : Prog (BitVec 64) :=
.seq globalBody230_5 globalBody230_0

def globalBody230_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_bytes"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 32#64]),
    Flapjack.Exp.const 32#64]

def globalBody230_8 : Prog (BitVec 64) :=
.seq globalBody230_6 globalBody230_7

def globalBody230_9 : Prog (BitVec 64) :=
.seq globalBody230_8 globalBody230_0

def globalBody230_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_bytes"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 40#64]),
    Flapjack.Exp.const 32#64]

def globalBody230_11 : Prog (BitVec 64) :=
.seq globalBody230_9 globalBody230_10

def globalBody230_12 : Prog (BitVec 64) :=
.seq globalBody230_11 globalBody230_0

def globalBody230_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_bytes"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 48#64]),
    Flapjack.Exp.const 32#64]

def globalBody230_14 : Prog (BitVec 64) :=
.seq globalBody230_12 globalBody230_13

def globalBody230_15 : Prog (BitVec 64) :=
.seq globalBody230_14 globalBody230_0

def globalBody230_16 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_bytes"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 56#64]),
    Flapjack.Exp.const 256#64]

def globalBody230_17 : Prog (BitVec 64) :=
.seq globalBody230_15 globalBody230_16

def globalBody230_18 : Prog (BitVec 64) :=
.seq globalBody230_17 globalBody230_0

def globalBody230_19 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_put_u256"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load
      (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 64#64])]

def globalBody230_20 : Prog (BitVec 64) :=
.seq globalBody230_18 globalBody230_19

def globalBody230_21 : Prog (BitVec 64) :=
.seq globalBody230_20 globalBody230_0

def globalBody230_22 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_word"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 96#64])]

def globalBody230_23 : Prog (BitVec 64) :=
.seq globalBody230_21 globalBody230_22

def globalBody230_24 : Prog (BitVec 64) :=
.seq globalBody230_23 globalBody230_0

def globalBody230_25 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_word"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 104#64])]

def globalBody230_26 : Prog (BitVec 64) :=
.seq globalBody230_24 globalBody230_25

def globalBody230_27 : Prog (BitVec 64) :=
.seq globalBody230_26 globalBody230_0

def globalBody230_28 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_word"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 112#64])]

def globalBody230_29 : Prog (BitVec 64) :=
.seq globalBody230_27 globalBody230_28

def globalBody230_30 : Prog (BitVec 64) :=
.seq globalBody230_29 globalBody230_0

def globalBody230_31 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_word"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 120#64])]

def globalBody230_32 : Prog (BitVec 64) :=
.seq globalBody230_30 globalBody230_31

def globalBody230_33 : Prog (BitVec 64) :=
.seq globalBody230_32 globalBody230_0

def globalBody230_34 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_bytes"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 128#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 136#64])]

def globalBody230_35 : Prog (BitVec 64) :=
.seq globalBody230_33 globalBody230_34

def globalBody230_36 : Prog (BitVec 64) :=
.seq globalBody230_35 globalBody230_0

def globalBody230_37 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_bytes"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 144#64]),
    Flapjack.Exp.const 32#64]

def globalBody230_38 : Prog (BitVec 64) :=
.seq globalBody230_36 globalBody230_37

def globalBody230_39 : Prog (BitVec 64) :=
.seq globalBody230_38 globalBody230_0

def globalBody230_40 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_bytes"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 152#64]),
    Flapjack.Exp.const 8#64]

def globalBody230_41 : Prog (BitVec 64) :=
.seq globalBody230_39 globalBody230_40

def globalBody230_42 : Prog (BitVec 64) :=
.seq globalBody230_41 globalBody230_0

def globalBody230_43 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_put_u256"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load
      (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 160#64])]

def globalBody230_44 : Prog (BitVec 64) :=
.seq globalBody230_42 globalBody230_43

def globalBody230_45 : Prog (BitVec 64) :=
.seq globalBody230_44 globalBody230_0

def globalBody230_46 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_bytes"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 192#64]),
    Flapjack.Exp.const 32#64]

def globalBody230_47 : Prog (BitVec 64) :=
.seq globalBody230_45 globalBody230_46

def globalBody230_48 : Prog (BitVec 64) :=
.seq globalBody230_47 globalBody230_0

def globalBody230_49 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_word"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 200#64])]

def globalBody230_50 : Prog (BitVec 64) :=
.seq globalBody230_48 globalBody230_49

def globalBody230_51 : Prog (BitVec 64) :=
.seq globalBody230_50 globalBody230_0

def globalBody230_52 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_word"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 208#64])]

def globalBody230_53 : Prog (BitVec 64) :=
.seq globalBody230_51 globalBody230_52

def globalBody230_54 : Prog (BitVec 64) :=
.seq globalBody230_53 globalBody230_0

def globalBody230_55 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_bytes"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 216#64]),
    Flapjack.Exp.const 32#64]

def globalBody230_56 : Prog (BitVec 64) :=
.seq globalBody230_54 globalBody230_55

def globalBody230_57 : Prog (BitVec 64) :=
.seq globalBody230_56 globalBody230_0

def globalBody230_58 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_bytes"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 224#64]),
    Flapjack.Exp.const 32#64]

def globalBody230_59 : Prog (BitVec 64) :=
.seq globalBody230_57 globalBody230_58

def globalBody230_60 : Prog (BitVec 64) :=
.seq globalBody230_59 globalBody230_0

def globalBody230_61 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_bytes"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 232#64]),
    Flapjack.Exp.const 32#64]

def globalBody230_62 : Prog (BitVec 64) :=
.seq globalBody230_61 globalBody230_0

def globalBody230_63 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_word"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 240#64])]

def globalBody230_64 : Prog (BitVec 64) :=
.seq globalBody230_62 globalBody230_63

def globalBody230_65 : Prog (BitVec 64) :=
.seq globalBody230_64 globalBody230_0

def globalBody230_66 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody230_67 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 0#64]))
  (Flapjack.Exp.const 0#64)) globalBody230_65 globalBody230_66

def globalBody230_68 : Prog (BitVec 64) :=
.seq globalBody230_60 globalBody230_67

def globalBody230_69 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "rlp_encode_list_header"
  [Flapjack.Exp.var Flapjack.VarKind.local "start", Flapjack.Exp.var Flapjack.VarKind.local "payload_len"]

def globalBody230_70 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.var Flapjack.VarKind.local "start",
      Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "payload_len", Flapjack.Exp.var Flapjack.VarKind.local "hl"]])

def globalBody230_71 : Prog (BitVec 64) :=
.seq globalBody230_69 globalBody230_70

def globalBody230_72 : Prog (BitVec 64) :=
.dec ("start") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "buf", Flapjack.Exp.const 9#64],
    Flapjack.Exp.var Flapjack.VarKind.local "hl"]) globalBody230_71

def globalBody230_73 : Prog (BitVec 64) :=
.decCall ("hl") (Flapjack.Shape.one) ("rlp_list_header_len") ([Flapjack.Exp.var Flapjack.VarKind.local "payload_len"]) globalBody230_72

def globalBody230_74 : Prog (BitVec 64) :=
.dec ("payload_len") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "buf", Flapjack.Exp.const 9#64]]) globalBody230_73

def globalBody230_75 : Prog (BitVec 64) :=
.seq globalBody230_68 globalBody230_74

def globalBody230_76 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.one) ("rlp_encode_bytes") ([Flapjack.Exp.var Flapjack.VarKind.local "p",
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 8#64]),
  Flapjack.Exp.const 32#64]) globalBody230_75

def globalBody230_77 : Prog (BitVec 64) :=
.dec ("p") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "buf", Flapjack.Exp.const 9#64]) globalBody230_76

def globalBody230_78 : Prog (BitVec 64) :=
.decCall ("buf") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 1024#64]) globalBody230_77

def globalData230 : Decl (BitVec 64) :=
.function { name := "encode_header", inline := false, exported := false, params := [("h", Flapjack.Shape.one)], body := globalBody230_78, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput230 := Pancake.PanLang.declToHOL globalData230
end InitECandidate.Proofs.FrontendStages.Declarations
