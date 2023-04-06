const Strong = ({ children }) => {
  return (
    <strong
      style={{
        fontWeight: "bold",
        display: 'block',
        fontSize: '1.3rem',
        margin: '1rem 0',
      }}
    >
      {children}
    </strong>
  );
}

export default Strong;